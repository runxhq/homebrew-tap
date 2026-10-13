# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.0/runx-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "76b73c86fc13fa9d777fd6d4cdc8a41138ced27db3099ee338f71e7308c0d024"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.0/runx-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "e7bb917a027e8735f25eda9bb0db387e736f400d9605afce47f4b9924de2f638"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.0/runx-0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a589e3ac285940100399bc17a66f03f0b91b6f9c440def71b82a407bf1ebc253"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.0/runx-0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0812b23a9fac48b3788e09b973fc1f2ca346954ea8c8c8e90af3739350b92e08"
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
