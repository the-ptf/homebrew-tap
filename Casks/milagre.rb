cask "milagre" do
  arch arm: "arm64", intel: "x64"

  version "0.233.0"
  sha256 arm: "74465b94adaa0ef8e778a8f992358512ec33f95db8f090e31a8368791b0ca3ce", intel: "5627e457d8214942ae0479272cb0df2fd354fd12de82b81f3ecfaac74867a1cb"

  url "https://github.com/the-ptf/milagre/releases/download/v#{version}/Milagre-#{version}-#{arch}.dmg"
  name "Milagre"
  desc "A local-first desktop ADE for coordinating coding agents"
  homepage "https://github.com/the-ptf/milagre"

  auto_updates true

  app "Milagre.app"
end
