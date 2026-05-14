cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "9d7b72531ebe7c86ae85e74f5c11f9038d03fe740c8afbfe84a9c7a223512cb7",
         intel: "025ea71d3b66231f2de7fde38881fc4150e470418bb70a6669d39c275075e225"

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
