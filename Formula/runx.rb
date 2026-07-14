# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.1/runx-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "d829b98f4f8d345df1b7c38634a765dfaa076ba295932633006f1f1e48c4cd84"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.1/runx-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "de8276dda2cda2f0ac4432bf9c792af415829b59f828d6a38c913d88f6efa890"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.1/runx-0.7.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "89bdbf973754a0f31837029801442ee877a85846d87bf21db1327d1886703743"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.7.1/runx-0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d2e85b465398ec8521f50a6bdf475d49bf1e866efd959581a0a6f11139858b3"
    end
  end

  def install
    bin.install Dir["*/runx"].first => "runx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runx --version")
  end
end
