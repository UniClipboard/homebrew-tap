cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "750b87e4c145bfca10faaa3571d1ab641de16330dfb7766eb8e2eb34b286ca1a",
         intel: "d32ad470da6dc105bb9d8d16b59634f225524addcdd039cc643aeee3e6274721"

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
