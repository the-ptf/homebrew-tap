cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.101.0"
  sha256 arm: "97cc5b04227bf96c46bf5739fbb8ab645c25748ce6c9aad344edb82e8a77af42", intel: "3ede96c78006be5f39b17388774bc7b0f521d135183f45dd37191321f0af2fc5"

  url "https://github.com/the-ptf/milagre-ade/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre-ade"

  auto_updates true

  app "Milagre.app"
end
