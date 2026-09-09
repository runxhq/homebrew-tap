# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.9.0/runx-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "6b5a37e4e4345890ac00502ed54681fec3ed406cbe57db109141331bf0035ccd"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.9.0/runx-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "04503b63bbb8633f9d86d5ad0d7b37ba96032f410b2aa6dda22e92c67103c723"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.9.0/runx-0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "17a69957596f5d40530bb3078499e5c9153c5d95b2e3341e34cf5d58c8c487a2"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.9.0/runx-0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "142a80612e1b4449b1185b04b4589195b0b840111c456c128fa4cb94d20ff756"
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
