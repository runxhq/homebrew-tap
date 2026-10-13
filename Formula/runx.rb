# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.1/runx-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "16cd9df45e954b227412269910f91ae29dd4eaf1c133a619be30ea8f71c8dd1c"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.1/runx-0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "5c2a889115e17fe72497fa0ff357061b8167ca03739fface0c6ed30e4353e140"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.1/runx-0.10.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a5b0e0832b620c9cb23b610b4896e9b621ec22d987cf491942ed138cb9aa3168"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.10.1/runx-0.10.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "937b294fc33144927ac5aa75a958696f10090e0490d696c70844a056c43d9d78"
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
