class Sdlc < Formula
  desc "AI-driven software development lifecycle CLI tool"
  homepage "https://gitlab.com/Nicos.Karagieorgopulus/ai-sdlc"
  url "https://gitlab.com/api/v4/projects/82736572/packages/generic/sdlc/v0.1.2/sdlc-v0.1.2-darwin-universal.tar.gz"
  sha256 "placeholder_run_update_sdlc_workflow_to_set_correct_value"
  license "MIT"

  def install
    bin.install "sdlc"
  end

  test do
    system "bin/sdlc", "--version"
  end
end
