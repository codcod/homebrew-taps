class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.0.11/repos-0.0.11-universal-apple-darwin.tar.gz"
  sha256 "782330164101e6cafbf373b6ac3a5dad8aca5b29d1fae8362cb8c6b187ccf994"
  license "MIT"

  def install
    bin.install "repos"

    # Install plugins
    resources.each do |r|
      r.stage do
        bin.install r.name
      end
    end
  end

  test do
    system "bin/repos", "--version"
  end
end
