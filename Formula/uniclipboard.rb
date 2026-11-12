class Uniclipboard < Formula
  desc "Privacy-first cross-device clipboard sync CLI"
  homepage "https://github.com/UniClipboard/UniClipboard"
  version "1.6.2"
  license "AGPL-3.0-only"

  on_arm do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "3a849baa932a8b4864082a26e2ec591812c1279cd73e0111f91540aeeb52c50b"
  end

  on_intel do
    url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/uniclipboard-cli-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "1726246f9910016102c1c8e92e7c579fb927ba8a748e06676053d4f02c1e97d3"
  end

  def install
    bin.install "uniclip"
  end

  test do
    system bin/"uniclip", "--version"
  end
end
