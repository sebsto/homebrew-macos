# Generated by following instructions at
# https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74
# https://medium.com/@mxcl/maintaining-a-homebrew-tap-for-swift-projects-7287ed379324

class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.3.tar.gz"
  sha256 "752662290033f945c9bc6f9375f6964a4881844efd24a1beada560b312f5f9d7"
  license "Apache-2.0"

  # insert bottle definition here
  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.3"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "a02ac1e31d0c79441f54865996da4a2e578204cdba10828049ca9cc75dc6cbb2"
    sha256 cellar: :any_skip_relocation, monterey: "a02ac1e31d0c79441f54865996da4a2e578204cdba10828049ca9cc75dc6cbb2"
  end

  def install
    system "./scripts/build_fat_binary.sh"
    bin.install ".build/apple/Products/Release/xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
