# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.9.1/runx-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "7106c89fa6f1808b5d48134de94a93fe64e7f3ccb47e603f1305a9ad12f0aec5"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.9.1/runx-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "0976abcdde6932af9c8c6cd548c7e92763abae12378956de9b8c161b903c564c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.9.1/runx-0.9.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0181826afc39e49bca26fa7fd2d16c08d816ec94220c9553481d9c655eba705d"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.9.1/runx-0.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59eee2af81d24d0f8ba2416e2bac55d147ed93693e6a41ffe7c2cfd5cba98cc7"
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
