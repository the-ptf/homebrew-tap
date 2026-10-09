cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.147.0"
  sha256 arm: "fe4b0374598108b2c00b63f9d72170462bd499fd604c3db136484e41b8ea0e06", intel: "463e2bb2670a051a4ccd2000c0784ebfaad902c27bdca075a64f8214a1ec4fa1"

  url "https://github.com/the-ptf/milagre-ade/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre-ade"

  auto_updates true

  app "Milagre.app"
end
