class MaintsTriage < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints-triage"
  url "https://github.com/codcod/maints-triage/releases/download/v0.5.0/triage-v0.5.0-darwin-universal.tar.gz"
  sha256 "539a73c86aa2f41656f86092cc77931e4f8bb5cc4fc2b1b581d72b065217fca5"
  license "MIT"

  def install
    bin.install "triage"
  end

  test do
    system "bin/triage", "--version"
  end
end
