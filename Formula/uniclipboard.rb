class Uniclipboard < Formula
  desc "Privacy-first cross-device clipboard sync CLI"
  homepage "https://github.com/UniClipboard/UniClipboard"
  version "0.7.0"
  license "AGPL-3.0-only"

  on_arm do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "3f532459ba9ad0741ab60d362fd0faa92d60855b542b3c8eafd428231ee0d9c5"
  end

  on_intel do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "d03bc70fea0d37378018adc62756a0ecfa81e35c4df8b11bbdce5487357b1eee"
  end

  def install
    bin.install "uniclip"
  end

  test do
    system bin/"uniclip", "--version"
  end
end
