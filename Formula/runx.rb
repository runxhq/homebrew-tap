# typed: false
# frozen_string_literal: true

class Runx < Formula
  desc "Native governed runtime for agent skills, tools, graphs, and packets."
  homepage "https://github.com/runxhq/runx"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.0/runx-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "ffc4154dcfca4ce9d272a1b133784c5a3c79cd5fb8b8d156a19a48fa0115e21d"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.0/runx-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "08185e63e297af130a9423d78b77cebe95b3bdfd8fd484c2366416f25b25e98c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.0/runx-0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e643b06217d7dbe07ecadd8857e80d02ff3ab4854caa548d7f8f44e4d707591e"
    end
    on_intel do
      url "https://github.com/runxhq/runx/releases/download/cli-v0.8.0/runx-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea565bbe7496c1b329dd4a524ca84ef697843126c0fdb8b005670f74911d3e8c"
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
