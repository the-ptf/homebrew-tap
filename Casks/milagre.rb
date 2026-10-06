cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.96.0"
  sha256 arm: "d34c50adb99f4b8157a0cdbb16ef57f879994f9e97a55239feeb32c276adce94", intel: "e72e76f6067e5bc7b8d9849d7f23bf32436228158907345edec59a99a8665f65"

  url "https://github.com/the-ptf/milagre-ade/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre-ade"

  auto_updates true

  app "Milagre.app"
end
