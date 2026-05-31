class Sdlc < Formula
  desc "AI-driven software development lifecycle CLI tool"
  homepage "https://gitlab.com/Nicos.Karagieorgopulus/ai-sdlc"
  url "https://gitlab.com/api/v4/projects/82736572/packages/generic/sdlc/v0.1.2/sdlc-v0.1.2-darwin-universal.tar.gz"
  sha256 "d3a460088ab79a822e809d3a43e2ce2197ee01eca396677394d85ac12822e8e8"
  license "MIT"

  def install
    bin.install "sdlc"
  end

  test do
    system "bin/sdlc", "--version"
  end
end
