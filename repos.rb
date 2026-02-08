class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.5.0/repos-0.5.0-macos-universal.tar.gz"
  sha256 "997f6d03630dd81c0a89f18e9f53a96c656fb025704e34e9e270714e2f4317bb"
  license "MIT"


  resource "repos-health" do
    url "https://github.com/codcod/repos/releases/download/v0.5.0/repos-health-0.5.0-macos-universal.tar.gz"
    sha256 "4458a7f01015e03030682a0ab17a3158698f80e95488729098bfaa7a59c0dae1"
  end

  resource "repos-validate" do
    url "https://github.com/codcod/repos/releases/download/v0.5.0/repos-validate-0.5.0-macos-universal.tar.gz"
    sha256 "6fd3fac99cc849995bb1776ff5b1080f2d954336911e5797f86056ae231fded4"
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
