class Maints < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints"
  url "https://github.com/codcod/maints/releases/download/v0.6.1/maints-v0.6.1-darwin-universal.tar.gz"
  sha256 "ba18a93dc42f8a290a923d8d7e2a896279d0de1baf464525fee93ed746be9661"
  license "MIT"

  def install
    bin.install "maints"
  end

  test do
    system "bin/maints", "--version"
  end
end
