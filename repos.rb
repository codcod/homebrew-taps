class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.5.1/repos-0.5.1-macos-universal.tar.gz"
  sha256 "bdab0aa50bb96f7537cd2264e5347e0fc46da85170156c96e3dd9d16f408ecd4"
  license "MIT"


  resource "repos-fix" do
    url "https://github.com/codcod/repos/releases/download/v0.5.1/repos-fix-0.5.1-macos-universal.tar.gz"
    sha256 "8fb42717595d8057c75b1d6a9179cdc1fc3a999ee6375d12702b3bcc5f9e50e9"
  end

  resource "repos-health" do
    url "https://github.com/codcod/repos/releases/download/v0.5.1/repos-health-0.5.1-macos-universal.tar.gz"
    sha256 "fed05f935866b3f6e8955f922d475a595985e21bbccb36712b5b926498f2ee41"
  end

  resource "repos-review" do
    url "https://github.com/codcod/repos/releases/download/v0.5.1/repos-review-0.5.1-macos-universal.tar.gz"
    sha256 "e54174cdd43e7fa60662212aa66865e95ccb797a096bfb177e8355ab36171c8a"
  end

  resource "repos-validate" do
    url "https://github.com/codcod/repos/releases/download/v0.5.1/repos-validate-0.5.1-macos-universal.tar.gz"
    sha256 "61ffbb8de2b29cfb32c8ab61d213745e6f0d439c371bb89a7dba9b893c980c26"
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
