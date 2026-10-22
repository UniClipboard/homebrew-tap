cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "e6ad949896861fe369b330a8ef173a007ee3eaaa89b4875ee67e2ec542a12b14",
         intel: "73d9786a116c22052e8d863016c0d02b6a8e4ec96a8caa2eaf7f9793c8dcce75"

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
