# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.6.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.6.19/runx-0.6.19-aarch64-apple-darwin.tar.gz"
      sha256 "927770f60935204ea8e92f2344f40fcda612658d2f6f8f6ab7a1a65ee42bf9e8"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.6.19/runx-0.6.19-x86_64-apple-darwin.tar.gz"
      sha256 "3831f07f59ede5a657e8b7a9983ac8090e3c2b448d23cb0bd263db694a4713ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.6.19/runx-0.6.19-aarch64-unknown-linux-musl.tar.gz"
      sha256 "16df7776c7ee1f8a91fa906b10164900d6467b73e4130a5701249b42d98f9971"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.6.19/runx-0.6.19-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1cdcb2ab70edabb6447e640f17f679aa0a105af713abeefccd5636f670b7e9dd"
    end
  end

  def install
    bin.install "runx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runx --version")
  end
end
