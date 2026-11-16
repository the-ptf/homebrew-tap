cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.232.0"
  sha256 arm: "3332e930a784a373a40e42c5cba123e6bc29148b8d177edc36799d67b842fdff", intel: "647fddbccf66da42f5084a28ccececbb729ada0047ebba154275d0c819c3c4ae"

  url "https://github.com/the-ptf/milagre/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre"

  auto_updates true

  app "Milagre.app"
end
