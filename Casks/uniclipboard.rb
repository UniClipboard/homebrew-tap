cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "fa84aed78c41300e5fb6602b785c8f427be0469cead52ddde54e5e144f6bc5dd",
         intel: "55baee8793817746197373f76a33e8603f93c030cdaf5e8d2bf2872fceee964b"

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
