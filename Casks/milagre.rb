cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.105.3"
  sha256 arm: "aa53bf550a10a2a5e02ffc2a779c68d9935802d9dd3a085b4f323c660905d266", intel: "d8fa2f15a927f3fd7c7d173cf966942d2b8b7ef5f3042486517acc9ab98f2f50"

  url "https://github.com/the-ptf/milagre-ade/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre-ade"

  auto_updates true

  app "Milagre.app"
end
