class Uniclipboard < Formula
  desc "Privacy-first cross-device clipboard sync CLI"
  homepage "https://github.com/UniClipboard/UniClipboard"
  version "0.12.0"
  license "AGPL-3.0-only"

  on_arm do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "6b007ec0ad7e43bbb6b87e719093b81c328d62f2a8f6fd8b96312bfce99c17c5"
  end

  on_intel do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "328dea3e3103eb7121c3066f26004cd6035490ee0f7d3c0b5db01938165eefac"
  end

  def install
    bin.install "uniclip"
  end

  test do
    system bin/"uniclip", "--version"
  end
end
