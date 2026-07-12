# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.0/runx-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "d1fbec483e322a5dfb8ead04eeae81c214b1089f481b221b6db777f6cf1e9a37"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.0/runx-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "0862e05e7db1639a790e4270e9e2dc3b46623785559b3f086c6beaf4a7309662"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.0/runx-0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "426232cf8cf7254b332d89ade4820e063261cfea31f9654c8fdf545f18fd2d94"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.0/runx-0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "69caa918ba77d0e4edb8aeff52602e9828e95240fe454a9434037467c09d9f19"
    end
  end

  def install
    bin.install Dir["*/runx"].first => "runx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runx --version")
  end
end
