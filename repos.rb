class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "ccfee127b6d9594ef8c2f45bdf5504e424d0d31a4bfde46b008f2d55907befe8"
  license "MIT" # or whatever license you use

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"repos", "./cmd/repos"
  end

  test do
    system "bin/repos", "--version"
  end
end
