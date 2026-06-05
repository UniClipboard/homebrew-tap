cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.1"
  sha256 arm:   "4d3f31a7fffb58c568d1b203d7b2dc2c771f88a4f7d430ca72330942fd4e4ab7",
         intel: "8a7c543e5e80f8cfdfdffebb2d0c1b66ce1f9837fb6631c9131cae77e655b584"

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
