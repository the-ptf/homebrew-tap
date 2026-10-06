cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.92.0"
  sha256 arm: "6e18c36ffd3c8e83da4cd7b579a9f50945da256495543ded220783d10b3f7653", intel: "5ba8b82a23420a72eadb363ccf8b24ed03557457a408e6444af584ce73f60f8d"

  url "https://github.com/the-ptf/milagre-ade/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre-ade"

  auto_updates true

  app "Milagre.app"
end
