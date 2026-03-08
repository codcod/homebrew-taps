class MaintsTriage < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints-triage"
  url "https://github.com/codcod/maints-triage/releases/download/v0.2.0/triage-v0.2.0-darwin-universal.tar.gz"
  sha256 "be3d2561d75c7ee62b58142e976add0acb1ad844ff6cce7404602c35ee4a86ea"
  license "MIT"

  def install
    bin.install "triage"
  end

  test do
    system "bin/triage", "--version"
  end
end
