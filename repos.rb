class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.0.14/repos-0.0.14-universal-apple-darwin.tar.gz"
  sha256 "adc40bc619382f2965f8e508173dafd085735b32e1ac85a8d1cd14bcab8d66a5"
  license "MIT"


  resource "repos-health" do
    url "https://github.com/codcod/repos/releases/download/v0.0.14/repos-health-0.0.14-universal-apple-darwin.tar.gz"
    sha256 "069e057983db9df197dcd651b448c559075d7103457bfa5742b29b03da6982c8"
  end

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
