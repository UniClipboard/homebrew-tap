cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "8836a78b382602de833988e057bd6b91d86b45f25dd039afffd8d87d3edaba92",
         intel: "dd49c7aa0b397e5dfd59dbfa1d9e6d1c0952df096a13a7db752fe424ec0c3038"

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
