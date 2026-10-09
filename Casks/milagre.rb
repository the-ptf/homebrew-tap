cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.149.0"
  sha256 arm: "e615e9b35c666e0207d597a0ce7a70da18e3a9923cf9e02da4dcce70f29c8a9a", intel: "6eac1b144e511a3560084c3b906fcf8e5a1b48c859b4524c5dbedba49d87d52c"

  url "https://github.com/the-ptf/milagre-ade/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre-ade"

  auto_updates true

  app "Milagre.app"
end
