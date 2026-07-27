# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.1/runx-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "105f461a782b8e5cdd007ccad92e8714e964d03570c193a3240484551ad9b935"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.1/runx-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "455b14b0533fd6b585e8122edcb4f2d8a23994492f3d6b3463d9ae96f90b490d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.1/runx-0.8.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b1e9135fc57410934de60d7bdd1176476f28df8b52760740627d1bd4f862a165"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.1/runx-0.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79568a26f963340f1bf23aaef0082bd05b14d2aed3c8f7621d04762189845a70"
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
