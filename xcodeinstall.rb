class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v1.0.0-rc1.tar.gz"
  sha256 "12db534d26909831a2bddeecc4be653f71421f1c5d4cdb1f6aca9b140737556a"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v1.0.0-rc1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "0f7ffc2237c607156bc5a0599df365f49445ea97240e93d709a5367dfb78b85f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0f7ffc2237c607156bc5a0599df365f49445ea97240e93d709a5367dfb78b85f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0f7ffc2237c607156bc5a0599df365f49445ea97240e93d709a5367dfb78b85f"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "0f7ffc2237c607156bc5a0599df365f49445ea97240e93d709a5367dfb78b85f"
    sha256 cellar: :any_skip_relocation, ventura: "0f7ffc2237c607156bc5a0599df365f49445ea97240e93d709a5367dfb78b85f"
    sha256 cellar: :any_skip_relocation, sonoma: "0f7ffc2237c607156bc5a0599df365f49445ea97240e93d709a5367dfb78b85f"
    sha256 cellar: :any_skip_relocation, sequoia: "0f7ffc2237c607156bc5a0599df365f49445ea97240e93d709a5367dfb78b85f"
    sha256 cellar: :any_skip_relocation, tahoe: "0f7ffc2237c607156bc5a0599df365f49445ea97240e93d709a5367dfb78b85f"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
