cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "3c470f3b4aa8d961e87f66892b59d0e93537b7b0624585cda4022dca239b8901",
         intel: "8cb4baab17b8a22de1056bcd859e13a3f47efa18d2691ea7e0e03c65c54bd943"

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
