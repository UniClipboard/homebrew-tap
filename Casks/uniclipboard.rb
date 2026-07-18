cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "1efe3665a22e7ddc91b13a9ac54265c41adafc079235b92192dbcefc7aefbe2a",
         intel: "00a06cebe321b19e9f2915682f31c9b8273822517229091505aee3c3cae9f439"

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
