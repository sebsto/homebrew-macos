class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "8d6f6de1031b13df19f00721ba164de755d8a534c7a980ccc8caf410c947768b"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.15.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7e5e6d897aec12622d03f3771e6a0632be7c6e995a47f6b767efd944ad506f69"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7e5e6d897aec12622d03f3771e6a0632be7c6e995a47f6b767efd944ad506f69"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7e5e6d897aec12622d03f3771e6a0632be7c6e995a47f6b767efd944ad506f69"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "7e5e6d897aec12622d03f3771e6a0632be7c6e995a47f6b767efd944ad506f69"
    sha256 cellar: :any_skip_relocation, ventura: "7e5e6d897aec12622d03f3771e6a0632be7c6e995a47f6b767efd944ad506f69"
    sha256 cellar: :any_skip_relocation, sonoma: "7e5e6d897aec12622d03f3771e6a0632be7c6e995a47f6b767efd944ad506f69"
    sha256 cellar: :any_skip_relocation, sequoia: "7e5e6d897aec12622d03f3771e6a0632be7c6e995a47f6b767efd944ad506f69"
    sha256 cellar: :any_skip_relocation, tahoe: "7e5e6d897aec12622d03f3771e6a0632be7c6e995a47f6b767efd944ad506f69"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
