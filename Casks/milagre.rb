cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.231.0"
  sha256 arm: "2706c555542a51ec8e8bc04ee37d6acd01d92ee8e5e8fae3e6b2510f0e2584da", intel: "c16ae4adb449883d974988bea679134be4e1723217054c26a23c3928ec222f6a"

  url "https://github.com/the-ptf/milagre/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre"

  auto_updates true

  app "Milagre.app"
end
