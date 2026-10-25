# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://runx.ai"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.11.0/runx-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "7306b3ec2fdce8700e58999447ff12d161e2479849297506bf44ee6042d72c06"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.11.0/runx-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "dc22d87fea72d73bdd5b6374801534fe51e95c096be4c08326c9f7c50645c57e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.11.0/runx-0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a13381bbfa0ca548084c54d69bc07af2c4553cfc81bd5c97436cfaacd3c76e22"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.11.0/runx-0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d7b31c56cfa4def4a0f8d181db6fc6ada48d92fd32756ab33db82c965f47afa1"
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
