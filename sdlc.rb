class Sdlc < Formula
  desc "AI-driven software development lifecycle CLI tool"
  homepage "https://gitlab.com/nicos.ka/ai-sdlc"
  url "https://gitlab.com/api/v4/projects/82745716/packages/generic/sdlc/v0.0.1/sdlc-v0.0.1-darwin-universal.tar.gz"
  sha256 "c74b267f704cc871f752d164dadfcd7bcb72c95a51c833d93f14f77dcf9b2c90"
  license "MIT"

  def install
    bin.install "sdlc"
  end

  test do
    system "bin/sdlc", "--version"
  end
end
