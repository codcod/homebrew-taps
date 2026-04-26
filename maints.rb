class Maints < Formula
  desc "CLI tool for triaging and managing maintenance issues."
  homepage "https://github.com/codcod/maints"
  url "https://github.com/codcod/maints/releases/download/v0.6.0/maints-v0.6.0-darwin-universal.tar.gz"
  sha256 "c1b59a6b4d07b6244696adb24f20b1e900a88eba145a60c2786d8daeceab2d68"
  license "MIT"

  def install
    bin.install "triage" => "maints"
  end

  test do
    system "bin/maints", "--version"
  end
end
