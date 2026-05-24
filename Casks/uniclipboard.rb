cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "2076e2f8d180c03a5781eae5afdda0cc556dc2cf31b76b126b778894972adf16",
         intel: "a372511062e9bb6f2ddba320531c6e59ed08d65a49ce8c2d0484ebe9cab9da50"

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
