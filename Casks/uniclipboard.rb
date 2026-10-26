cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "a4dcc5f03e0a8a0954062e18685e7af5c23eb1d292ce3289ad2b3ddfbd3bcd17",
         intel: "80790e719ce48f4809d36280779c8a3eb328ef2832c183181e70e7f70980159d"

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
