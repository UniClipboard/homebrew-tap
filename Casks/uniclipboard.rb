cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "6b0ad41ae08b1ab5ed61f55f251df9c653ad24dd78d165013e7e4f9b17a81688",
         intel: "40877acd44135c529c46396506097a51900d4a3cd3818e093960f264d4c461b4"

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
