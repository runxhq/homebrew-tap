# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://runx.ai"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.11.1/runx-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "61003d94bce60948ac1d3d7d4cc4920123be2f09ee1beecaa6da0ab7a81f7b19"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.11.1/runx-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "ff1baf9e9c814ed6bd65c45b3f432166083a9adf859bbc5be418e495101d60b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.11.1/runx-0.11.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20fce1f9ff34c5988eb3ac86e851714c7978626ad92836c0210108580934b174"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.11.1/runx-0.11.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a88afe745953b068314431926e27a0738d057e9a2ccd3975cf2bf916d82d9b70"
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
