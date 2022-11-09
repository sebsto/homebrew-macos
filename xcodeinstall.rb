# Generated by following instructions at
# https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74
# https://medium.com/@mxcl/maintaining-a-homebrew-tap-for-swift-projects-7287ed379324

class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v1.0.tar.gz"
  sha256 "e8a2e4996da5aea0a244ab62ef99b33615ddb8455ff678314e311484e090e1d5"
  license "Apache-2.0"

  # insert bottle definition here
  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v1.0"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "bde8976583dfe665759603e11ea80394a22472e6b6debef10dc4e647d20500b0"
    sha256 cellar: :any_skip_relocation, monterey: "bde8976583dfe665759603e11ea80394a22472e6b6debef10dc4e647d20500b0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "bde8976583dfe665759603e11ea80394a22472e6b6debef10dc4e647d20500b0"
    sha256 cellar: :any_skip_relocation, ventura: "bde8976583dfe665759603e11ea80394a22472e6b6debef10dc4e647d20500b0"
  end

  def install
    system "./scripts/build_fat_binary.sh"
    bin.install ".build/apple/Products/Release/xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
