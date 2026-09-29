class Uniclipboard < Formula
  desc "Privacy-first cross-device clipboard sync CLI"
  homepage "https://github.com/UniClipboard/UniClipboard"
  version "1.0.1"
  license "AGPL-3.0-only"

  on_arm do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "6a79ac98c1b962caf495d2bc6f899c52613d120e0e5e01cacac1725f12632225"
  end

  on_intel do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "ea02340346ca1ea9145f71b983b98a0070c1573f1f3ea37a7025ff997b49cc70"
  end

  def install
    bin.install "uniclip"
  end

  test do
    system bin/"uniclip", "--version"
  end
end
