class MaintsTriage < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints-triage"
  url "https://github.com/codcod/maints-triage/releases/download/v0.4.0/triage-v0.4.0-darwin-universal.tar.gz"
  sha256 "9b2f701396e97b6595b61e98991788fa83a06eaf8e2d217bdf473f442b84301a"
  license "MIT"

  def install
    bin.install "triage"
  end

  test do
    system "bin/triage", "--version"
  end
end
