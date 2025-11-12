class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.2.0/repos-0.2.0-macos-universal.tar.gz"
  sha256 "9507f99581e2b26aae6f7536882f9d2aecc3e456b68a8d2e2b57db7de755ad67"
  license "MIT"


  resource "repos-health" do
    url "https://github.com/codcod/repos/releases/download/v0.2.0/repos-health-0.2.0-macos-universal.tar.gz"
    sha256 "064f57fd37ed54cea2b5b46c053a95f42b6feaed4f01b9c57d9b16ad52f483b9"
  end

  resource "repos-validate" do
    url "https://github.com/codcod/repos/releases/download/v0.2.0/repos-validate-0.2.0-macos-universal.tar.gz"
    sha256 "47333eb0046e98814a032264d71b9f8cdaba0c4328ff7a5c4f33ce1b2694e624"
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
