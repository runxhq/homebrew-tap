# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://runx.ai"
  version "0.10.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.2/runx-0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "cbf4929fbdc896f1d482b7650950439545aa8c9f9d8a203fe321c25ab8baa496"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.2/runx-0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "d89d470c09db61c4b349a03e1137884b3c1a8fec3f8aa1977f4ee00c85a8eae4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.2/runx-0.10.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09d58e3ebc812cde5a19bb368fa73bfede8323231f0e94bd7879793d1e06f1c9"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.2/runx-0.10.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9dd0dc1ade0a3bface4d8bb12ad61df0e1f3980f93a86a68b7ecd3f96d132691"
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
