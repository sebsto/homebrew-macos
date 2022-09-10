# Generated by following instructions at
# https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74
# https://medium.com/@mxcl/maintaining-a-homebrew-tap-for-swift-projects-7287ed379324

#
# To compute the SHA :
# ➜  mac shasum -a 256 v0.2.tar.gz
# fe1c01175493bacd9f8523a475c9d028fb5d8cfb9fd199f6b80c7d3d356cdb58  v0.2.tar.gz
#

class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.2.tar.gz"
  sha256 "fe1c01175493bacd9f8523a475c9d028fb5d8cfb9fd199f6b80c7d3d356cdb58"
  license "Apache-2.0"

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install ".build/release/xcodeinstall"
    # bin.install 'dist/xcodeinstall'
  end
end