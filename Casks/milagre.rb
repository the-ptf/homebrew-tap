cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.94.1"
  sha256 arm: "67a96f386913c270ac104c4edb24480bee51ea2c95d952aff3e87bfca2fa6ea1", intel: "b0025b3d37833abdcdc4294339ab688206dc0ae633c5826e1785caae69351db4"

  url "https://github.com/the-ptf/milagre-ade/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre-ade"

  auto_updates true

  app "Milagre.app"
end
