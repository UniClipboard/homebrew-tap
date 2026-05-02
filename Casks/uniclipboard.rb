cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "f31b0cbf7de7401204bbe724290d40c65de3afecfabd3e2874f2c62f59691db3",
         intel: "4b47ebf569e01879a8d569bd50578e4fae14720306b3b021c1c2d6e3abc3ad5e"

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
