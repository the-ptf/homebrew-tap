import { createHash } from 'node:crypto';
import { readFile, writeFile } from 'node:fs/promises';
const repository = 'https://github.com/the-ptf/milagre-ade';
const response = await fetch('https://api.github.com/repos/the-ptf/milagre-ade/releases/latest', {
  headers: process.env.GH_TOKEN ? { Authorization: `Bearer ${process.env.GH_TOKEN}` } : {},
});
if (!response.ok) throw new Error(`Release lookup failed: HTTP ${response.status}`);
const release = await response.json();
if (release.draft || release.prerelease || !/^v(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)$/.test(release.tag_name)) throw new Error('Expected a public stable release');
const version = release.tag_name.slice(1);
const previous = await readFile('Casks/milagre.rb', 'utf8');
const oldVersion = previous.match(/version "([0-9.]+)"/)?.[1];
if (!oldVersion) throw new Error('Current cask has no version');
const parts = version.split('.').map(Number), oldParts = oldVersion.split('.').map(Number);
for (let index = 0; index < 3; index++) {
  if (parts[index] < oldParts[index]) throw new Error('Refusing to downgrade the cask');
  if (parts[index] > oldParts[index]) break;
}
const arm = `Milagre-${version}-arm64.dmg`;
const canonicalIntel = `Milagre-${version}-x64.dmg`;
const legacy = !release.assets.some(asset => asset.name === canonicalIntel);
const intel = legacy ? `Milagre-${version}.dmg` : canonicalIntel;
const hashes = [];
for (const name of [arm, intel]) {
  const asset = release.assets.find(asset => asset.name === name);
  if (!asset || asset.size <= 0 || asset.size > 512 * 1024 * 1024) throw new Error(`Missing or oversized DMG: ${name}`);
  const url = `${repository}/releases/download/${release.tag_name}/${name}`;
  if (asset.browser_download_url !== url) throw new Error(`Unexpected asset URL: ${name}`);
  const download = await fetch(url, { signal: AbortSignal.timeout(300000) });
  if (!download.ok) throw new Error(`Download failed: ${name} (HTTP ${download.status})`);
  const hash = createHash('sha256');
  let size = 0;
  for await (const bytes of download.body) {
    size += bytes.length;
    if (size > asset.size) throw new Error(`Oversized download: ${name}`);
    hash.update(bytes);
  }
  if (size !== asset.size) throw new Error(`Incomplete download: ${name}`);
  const digest = hash.digest('hex');
  if (asset.digest && asset.digest !== `sha256:${digest}`) throw new Error(`GitHub checksum mismatch: ${name}`);
  hashes.push(digest);
}
await writeFile('Casks/milagre.rb', `cask "milagre" do
  arch arm: "${legacy ? '-arm64' : 'arm64'}", intel: "${legacy ? '' : 'x64'}"

  version "${version}"
  sha256 arm: "${hashes[0]}", intel: "${hashes[1]}"

  url "${repository}/releases/download/v#{version}/Milagre-#{version}${legacy ? '' : '-'}#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "${repository}"

  auto_updates true

  app "Milagre.app"
end
`);
console.log(`Verified both DMGs for ${release.tag_name}`);
