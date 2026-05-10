cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "f57cdaeae134dab7f347025fbfbc0bc3d867280f1a974b575afaa979554c3e43",
         intel: "42d41784aef60142b059cde6dda5838e93614d34eacb41f7382148f4ff68d0f4"

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
