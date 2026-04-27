class Maints < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints"
  url "https://github.com/codcod/maints/releases/download/v0.6.3/maints-v0.6.3-darwin-universal.tar.gz"
  sha256 "1955ebb26b869e3b78d140552fbce6b07c34c5c3803b3a453e3742cd659c0283"
  license "MIT"

  def install
    bin.install "maints"
  end

  test do
    system "bin/maints", "--version"
  end
end
