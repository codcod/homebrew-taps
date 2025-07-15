class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "a9482310cc9a8127e46a6673521cd70ab2698161c42a9648631f0fce1e00ba4f"
  license "MIT" # or whatever license you use

  depends_on "rust" => :build

  def install
    # Build with version information
    ENV["REPOS_VERSION"] = version.to_s
    ENV["REPOS_COMMIT"] = "homebrew"
    ENV["REPOS_DATE"] = Time.now.strftime('%Y-%m-%d')

    system "cargo", "build", "--release"
    bin.install "target/release/repos"
  end

  test do
    system "bin/repos", "--version"
  end
end
