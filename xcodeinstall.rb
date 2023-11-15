# Generated by following instructions at
# https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74
# https://medium.com/@mxcl/maintaining-a-homebrew-tap-for-swift-projects-7287ed379324

class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.8.tar.gz"
  sha256 "27a9b74a7b90b74dfadbe2deae36952c477822436ae21171f512704167cd0570"
  license "Apache-2.0"

  # insert bottle definition here

  def install
    system "./scripts/build_fat_binary.sh"
    bin.install ".build/apple/Products/Release/xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
