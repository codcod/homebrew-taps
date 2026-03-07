class MaintsTriage < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints-triage"
  url "https://github.com/codcod/maints-triage/releases/download/v0.1.0/triage-v0.1.0-darwin-universal.tar.gz"
  sha256 "0f26d93b77666f14de55b3f2a8235f3a6f4a4b694afa36d965ed55358ff3f76e"
  license "MIT"

  def install
    bin.install "triage"
  end

  test do
    system "bin/triage", "--version"
  end
end
