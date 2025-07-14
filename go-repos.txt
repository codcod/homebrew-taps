class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "4c1b686855d4c2df70b1f7d76b52c2f1f67769dce60cc59024f9a3d20b1fa3ef"
  license "MIT" # or whatever license you use

  depends_on "go" => :build

  def install
    # Build with version information
    ldflags = "-X main.version=#{version} -X main.commit=homebrew -X main.date=#{Time.now.strftime('%Y-%m-%d')}"

    system "go", "build", "-ldflags", ldflags, "-o", bin/"repos", "./cmd/repos"
  end

  test do
    system "bin/repos", "version"
  end
end
