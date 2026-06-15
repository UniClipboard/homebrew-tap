cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "3f9f0afc6995ba1a69c008582d314ae4532b3e094a27f9497f3a1acaccb65d14",
         intel: "180645b799381bbd797646b9f5c000fd9706c21326aad36626ee72949be80959"

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
