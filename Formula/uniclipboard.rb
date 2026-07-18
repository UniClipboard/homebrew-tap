class Uniclipboard < Formula
  desc "Privacy-first cross-device clipboard sync CLI"
  homepage "https://github.com/UniClipboard/UniClipboard"
  version "0.19.0"
  license "AGPL-3.0-only"

  on_arm do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "847ab0f7cb2154a2d1790aef61d5cfdd6e02035df101a96bfa1fa60cfe66475a"
  end

  on_intel do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "4aa718bdc523f353a166ed6efe0e70838fef819f115c7e0934fa9100eedb53db"
  end

  def install
    bin.install "uniclip"
  end

  test do
    system bin/"uniclip", "--version"
  end
end
