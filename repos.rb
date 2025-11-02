class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.0.10/repos-0.0.10-universal-apple-darwin.tar.gz"
  sha256 "d8dc878f2d7bb1c9a47db350c3a17bb17d965ad663c60fb4fa90555c52beb3f4"
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
