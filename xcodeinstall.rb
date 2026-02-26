class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.20.0.tar.gz"
  sha256 "7ec06e79fcca3e0054d298beded6815071701e091ce111dbc832c9fe0004fda4"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.20.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "56d565fc25f3ace446a76ae8f8ccac38dfebbc03a664c838f6d8b2bcb227a6e4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "56d565fc25f3ace446a76ae8f8ccac38dfebbc03a664c838f6d8b2bcb227a6e4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "56d565fc25f3ace446a76ae8f8ccac38dfebbc03a664c838f6d8b2bcb227a6e4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "56d565fc25f3ace446a76ae8f8ccac38dfebbc03a664c838f6d8b2bcb227a6e4"
    sha256 cellar: :any_skip_relocation, ventura: "56d565fc25f3ace446a76ae8f8ccac38dfebbc03a664c838f6d8b2bcb227a6e4"
    sha256 cellar: :any_skip_relocation, sonoma: "56d565fc25f3ace446a76ae8f8ccac38dfebbc03a664c838f6d8b2bcb227a6e4"
    sha256 cellar: :any_skip_relocation, sequoia: "56d565fc25f3ace446a76ae8f8ccac38dfebbc03a664c838f6d8b2bcb227a6e4"
    sha256 cellar: :any_skip_relocation, tahoe: "56d565fc25f3ace446a76ae8f8ccac38dfebbc03a664c838f6d8b2bcb227a6e4"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
