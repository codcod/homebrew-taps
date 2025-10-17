class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.0.6/repos-0.0.6-universal-apple-darwin.tar.gz"
  sha256 "fba4b988082199f71256c78e1784c884b1b4cd2a7312a7e76e595a7c472d1bb6"
  license "MIT"

  def install
    bin.install "repos"
  end

  test do
    system "bin/repos", "--version"
  end
end
