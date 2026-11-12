cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "96f3e0ace95548fa3a87ffa9e2fb61f136dd90452a8c1881bcff06a4b539a7b0",
         intel: "f47afbdb3db4bdfe47127164dd12d2052a792d9b2703f35b69b22a28312f6e79"

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
