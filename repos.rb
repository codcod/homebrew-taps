class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.0.5/repos-0.0.5-universal-apple-darwin.tar.gz"
  sha256 "3152bcae8984fd52d1a354ce5803db8fab38737476d3ea0e4c735c6b94a16496"
  license "MIT"

  def install
    bin.install "repos"
  end

  test do
    system "bin/repos", "--version"
  end
end
