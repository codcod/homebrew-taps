class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/releases/download/v0.3.0/repos-0.3.0-macos-universal.tar.gz"
  sha256 "65a4b77eaa4b7ad90f8dcf8f19b004c5bf97bda31973929cdce5c798cd01d72a"
  license "MIT"


  resource "repos-health" do
    url "https://github.com/codcod/repos/releases/download/v0.3.0/repos-health-0.3.0-macos-universal.tar.gz"
    sha256 "583cd78732c6243167270800fcbbd7aff3cc0fdf9a8f1afdf75bbc41bce5ef0d"
  end

  resource "repos-validate" do
    url "https://github.com/codcod/repos/releases/download/v0.3.0/repos-validate-0.3.0-macos-universal.tar.gz"
    sha256 "3c77ec9c7ac9ff672dc9eb2da105a77b1471415a8b96161d6c1acf546f68459a"
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
