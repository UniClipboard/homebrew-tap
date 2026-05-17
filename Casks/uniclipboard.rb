cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "ceff05270cd4d4e4ca205e097f5aff3de768ff238218e025e44200124c130c2d",
         intel: "4f1a01e70bbbfb1129e8fad8316d8fc66de4ea25c14d74b09c3e1b5df66f8cd1"

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
