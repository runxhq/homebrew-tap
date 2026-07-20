# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.2/runx-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "926fb2551d5f84295c47ad71d75032cce5c9fb91db80215c48218caf1a98b164"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.2/runx-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "58533418673f5010296e5522de39b56d70c420dd18c08be1d6fabeadebb5c7ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.2/runx-0.7.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c15ce0289d9ca3ada9774aec920328686a50b656cff7fd9578d1d4d527ba6970"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.2/runx-0.7.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c64462c4fab9bf3d15938d7d18869fb533b2b0360a03c1023b7d92017fd89d0a"
    end
  end

  def install
    bin.install Dir["*/runx"].first => "runx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runx --version")
  end
end
