class Maints < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints"
  url "https://github.com/codcod/maints/releases/download/v0.7.0/maints-v0.7.0-darwin-universal.tar.gz"
  sha256 "45b6363d0cd650c5fd5fbe67f523c2f06efb895b42f2d3df8a311762dd79cea0"
  license "MIT"

  def install
    bin.install "maints"
  end

  test do
    system "bin/maints", "--version"
  end
end
