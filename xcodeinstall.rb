# Generated by following instructions at
# https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74
# https://medium.com/@mxcl/maintaining-a-homebrew-tap-for-swift-projects-7287ed379324

class Xcodeinstall < Formula
    desc "This is a command-line tool to download and install Apple's Xcode"
    homepage "https://github.com/sebsto/xcodeinstall"
    url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.3.tar.gz"
    sha256 "2830033124b1a5e82cc13f29f6600959b82e5121d3c5b56e5e1462cb66601f59"
    license "Apache-2.0"
  
    def install
      system "swift", "build",
          "--configuration", "release",
          "--disable-sandbox"
      bin.install ".build/release/xcodeinstall"
    end
  
    test do
      assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
    end
  end
