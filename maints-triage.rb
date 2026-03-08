class MaintsTriage < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints-triage"
  url "https://github.com/codcod/maints-triage/releases/download/v0.3.0/triage-v0.3.0-darwin-universal.tar.gz"
  sha256 "9f90323213770f08d82c586358470065f6df4358cca88c92d52690d29a6d9eb8"
  license "MIT"

  def install
    bin.install "triage"
  end

  test do
    system "bin/triage", "--version"
  end
end
