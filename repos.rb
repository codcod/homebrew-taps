class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.4.0/repos-0.4.0-macos-universal.tar.gz"
  sha256 "04d21c95a29522e3a9830a3b441004dfc5ed46f388d714749d31697cc41d7e02"
  license "MIT"


  resource "repos-health" do
    url "https://github.com/codcod/repos/releases/download/v0.4.0/repos-health-0.4.0-macos-universal.tar.gz"
    sha256 "7664e3b241ef6070d49ef783c6c79dd3d01dd1abda60b8235f78d9de5ff9d449"
  end

  resource "repos-validate" do
    url "https://github.com/codcod/repos/releases/download/v0.4.0/repos-validate-0.4.0-macos-universal.tar.gz"
    sha256 "51c4fa41cc3d106dced0c3e1b765f9001aaa61c18673dbbec64b9513a9e8daa2"
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
