class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.0.8/repos-0.0.8-universal-apple-darwin.tar.gz"
  sha256 "d427ee4a5ea55248dfd7c656218f06489ce1c1dadf47b813d22903730159e855"
  license "MIT"

  def install
    bin.install "repos"
  end

  test do
    system "bin/repos", "--version"
  end
end
