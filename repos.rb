class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.2.1/repos-0.2.1-macos-universal.tar.gz"
  sha256 "eee68bb48d8674ac328ec231ab508a4a857569543e50593d527e5146a39824a6"
  license "MIT"


  resource "repos-health" do
    url "https://github.com/codcod/repos/releases/download/v0.2.1/repos-health-0.2.1-macos-universal.tar.gz"
    sha256 "4d35b5bacbb5a6ec81a63c6915aa6b4aa43b8da71f24dc26d2a1238fde8f15c2"
  end

  resource "repos-validate" do
    url "https://github.com/codcod/repos/releases/download/v0.2.1/repos-validate-0.2.1-macos-universal.tar.gz"
    sha256 "46450b220eb37ad5054216e9f1339f5febc124163ae87fec92da77d7b51fab41"
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
