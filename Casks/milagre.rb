cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.105.5"
  sha256 arm: "063ed73139f5425d2fab4a53fc0eb0055791c214842f2a584811de9d8c4e50bb", intel: "bf5dd76a5f068d1c3f6525443cfeb9284577e0d5a491de02cbcd4fe994d77870"

  url "https://github.com/the-ptf/milagre-ade/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre-ade"

  auto_updates true

  app "Milagre.app"
end
