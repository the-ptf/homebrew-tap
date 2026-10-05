cask "milagre" do
  arch arm: "-arm64", intel: ""

  version "0.88.0"
  sha256 arm: "ef470778c8857767af376c8576c1c6e0a924041eba0d8d36e11d9cb9f148000f", intel: "8908fb89ca1d05aaca478be1f5560a9b8e36aa8c0c425f113ef0033389caa8e5"

  url "https://github.com/the-ptf/milagre-ade/releases/download/v#{version}/Milagre-#{version}#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre-ade"

  auto_updates true

  app "Milagre.app"
end
