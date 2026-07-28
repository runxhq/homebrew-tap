# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.2/runx-0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "3781a118e02ca400cee69ed12551ccd234948026aca9596db970a9c9b4b3890c"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.2/runx-0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "9fe47ffb9b446c488bae4b219e007dbc4ddcc04aeea3b512000b705cf2d47246"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.2/runx-0.8.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e558a64d99e99a971e9cfb6693620119ef04faeeb2a0b90da824fa0410b26cf1"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.2/runx-0.8.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b415ac4ce978195a4dd3857a382209e8d5fe98bdf3b5d191017ad6a892a94c8"
    end
  end

  def install
    bin.install Dir["*/runx"].first => "runx"
    bin.install Dir["*/runx-js-worker"].first => "runx-js-worker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runx --version")
  end
end
