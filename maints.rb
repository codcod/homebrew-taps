class Maints < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints"
  url "https://github.com/codcod/maints/releases/download/v0.6.4/maints-v0.6.4-darwin-universal.tar.gz"
  sha256 "176ad6ba3aeb18bb952c818787cf4c5e5522e0a8384c88d590bce565d7dd986c"
  license "MIT"

  def install
    bin.install "maints"
  end

  test do
    system "bin/maints", "--version"
  end
end
