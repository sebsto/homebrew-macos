class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.18.0.tar.gz"
  sha256 "457c4d27e3668b16a5fcf508f3f203416f378319849090a3986c4c2041a8f094"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.18.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7b655af832741620dcad3b23209b597190773930ce4a563c0d658972482b25fc"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7b655af832741620dcad3b23209b597190773930ce4a563c0d658972482b25fc"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7b655af832741620dcad3b23209b597190773930ce4a563c0d658972482b25fc"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "7b655af832741620dcad3b23209b597190773930ce4a563c0d658972482b25fc"
    sha256 cellar: :any_skip_relocation, ventura: "7b655af832741620dcad3b23209b597190773930ce4a563c0d658972482b25fc"
    sha256 cellar: :any_skip_relocation, sonoma: "7b655af832741620dcad3b23209b597190773930ce4a563c0d658972482b25fc"
    sha256 cellar: :any_skip_relocation, sequoia: "7b655af832741620dcad3b23209b597190773930ce4a563c0d658972482b25fc"
    sha256 cellar: :any_skip_relocation, tahoe: "7b655af832741620dcad3b23209b597190773930ce4a563c0d658972482b25fc"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
