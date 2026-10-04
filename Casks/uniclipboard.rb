cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "fe2d7785aae570d46695a663595367a6445960d83ad98e78a57c7b430379d0d1",
         intel: "fc8415e6bec6398f3d984d2808ead0f591c4cb5f5f96d6c07e29cfd39ba8324b"

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
