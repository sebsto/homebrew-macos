# Generated by following instructions at
# https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74
# https://medium.com/@mxcl/maintaining-a-homebrew-tap-for-swift-projects-7287ed379324

class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.6.tar.gz"
  sha256 "d33b1e1394b892725eeef81fdb6b697886f7341aee31ea547d81d9c3d373ebbe"
  license "Apache-2.0"

  # insert bottle definition here
  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.6"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "444b266b9b55dfebe8689bf92b64a427df0439c651110d1a9599dd094bfe7275"
    sha256 cellar: :any_skip_relocation, monterey: "444b266b9b55dfebe8689bf92b64a427df0439c651110d1a9599dd094bfe7275"
  end

  def install
    system "./scripts/build_fat_binary.sh"
    bin.install ".build/apple/Products/Release/xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
