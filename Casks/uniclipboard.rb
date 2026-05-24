cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "95b1f4f8c49b665f0f72de8665dd71b249f2a50bb979e4e755be9ddb7af1145b",
         intel: "fd926be908c1e360729283092a76f9f7f6dadc3a3dfba7413b090c0be139bf7b"

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
