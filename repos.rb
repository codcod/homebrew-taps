class Repos < Formula
  desc "Clone multiple GitHub repositories and run arbitrary commands inside them."
  homepage "https://github.com/codcod/repos"
  url "https://github.com/codcod/repos/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "402c1c2ae1f8815bae4e4d7bb9343b86db7170271d8ce8b2d34adc6f12a049d6"
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
