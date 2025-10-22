class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.0.9/repos-0.0.9-universal-apple-darwin.tar.gz"
  sha256 "fd1909402e5640c6c3be682b7b51c63de52b45b5c142014485b1c9b4a4b6bca4"
  license "MIT"

  def install
    bin.install "repos"
  end

  test do
    system "bin/repos", "--version"
  end
end
