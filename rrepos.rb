class Rrepos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/rrepos"
  url "https://github.com/codcod/rrepos/archive/refs/tags/0.1.0.tar.gz"
  sha256 "a8c27faa09583f480110fa17f9de5ed8483e34c23964ad7318bdb28b52e3945b"
  license "MIT" # or whatever license you use

  depends_on "rust" => :build

  def install
    # Build with version information
    ENV["REPOS_VERSION"] = version.to_s
    ENV["REPOS_COMMIT"] = "homebrew"
    ENV["REPOS_DATE"] = Time.now.strftime('%Y-%m-%d')

    system "cargo", "build", "--release"
    bin.install "target/release/rrepos"
  end

  test do
    system "bin/rrepos", "--version"
  end
end
