class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "005156ad2576909d72edb0eb4f13f7f723ed1306393598952d1789eae56f0157"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.15.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "3fe108702f8eedaced014d6941fb15be30daa8abc8890388a84fe22901e61815"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3fe108702f8eedaced014d6941fb15be30daa8abc8890388a84fe22901e61815"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3fe108702f8eedaced014d6941fb15be30daa8abc8890388a84fe22901e61815"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "3fe108702f8eedaced014d6941fb15be30daa8abc8890388a84fe22901e61815"
    sha256 cellar: :any_skip_relocation, ventura: "3fe108702f8eedaced014d6941fb15be30daa8abc8890388a84fe22901e61815"
    sha256 cellar: :any_skip_relocation, sonoma: "3fe108702f8eedaced014d6941fb15be30daa8abc8890388a84fe22901e61815"
    sha256 cellar: :any_skip_relocation, sequoia: "3fe108702f8eedaced014d6941fb15be30daa8abc8890388a84fe22901e61815"
    sha256 cellar: :any_skip_relocation, tahoe: "3fe108702f8eedaced014d6941fb15be30daa8abc8890388a84fe22901e61815"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
