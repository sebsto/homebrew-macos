class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.21.0.tar.gz"
  sha256 "42ecded5d65f493e5e362477e7fdfcc1be83ee9bc170bef69c580c88ca11b6d6"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.21.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7c157d55eaa803b90f125bda63d10efbaa4c4d269b4d059a5462040b046d52d7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7c157d55eaa803b90f125bda63d10efbaa4c4d269b4d059a5462040b046d52d7"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7c157d55eaa803b90f125bda63d10efbaa4c4d269b4d059a5462040b046d52d7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "7c157d55eaa803b90f125bda63d10efbaa4c4d269b4d059a5462040b046d52d7"
    sha256 cellar: :any_skip_relocation, ventura: "7c157d55eaa803b90f125bda63d10efbaa4c4d269b4d059a5462040b046d52d7"
    sha256 cellar: :any_skip_relocation, sonoma: "7c157d55eaa803b90f125bda63d10efbaa4c4d269b4d059a5462040b046d52d7"
    sha256 cellar: :any_skip_relocation, sequoia: "7c157d55eaa803b90f125bda63d10efbaa4c4d269b4d059a5462040b046d52d7"
    sha256 cellar: :any_skip_relocation, tahoe: "7c157d55eaa803b90f125bda63d10efbaa4c4d269b4d059a5462040b046d52d7"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
