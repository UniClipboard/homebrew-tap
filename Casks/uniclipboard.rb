cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "d092b8e6e4276b5ccb070adfd438b326b8644c18ecea5859a409b9f065384be3",
         intel: "316b7b5c94a73232d9a2299b5a6a0360aa9c34548f120291653cc75f0642f032"

  url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/UniClipboard_#{version}_#{arch}.dmg"
  name "UniClipboard"
  desc "Privacy-first cross-device clipboard sync"
  homepage "https://github.com/UniClipboard/UniClipboard"

  depends_on macos: ">= :monterey"

  app "UniClipboard.app"

  zap trash: [
    "~/Library/Application Support/app.uniclipboard.desktop",
    "~/Library/Logs/app.uniclipboard.desktop",
    "~/Library/Caches/app.uniclipboard.desktop",
  ]
end
