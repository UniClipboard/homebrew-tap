cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "12b1e09b3cb4ba8899760ceefec6fc5c76f27b38fda76219919b49630889f4ab",
         intel: "71c006bb0151602fc3a7f5dd725db36c3e24ba768cc2faa51ae605aae9d7c6c3"

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
