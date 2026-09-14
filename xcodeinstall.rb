class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "22dce092a01afd5a7ae2fabddf5e0e8e7b3b53a28a26aa3baf360a6b9daf4b44"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v1.1.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "bd589e6753a1db92bc82ac29faea66f4311edf1759399fd4a14fd167f0d78bee"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "bd589e6753a1db92bc82ac29faea66f4311edf1759399fd4a14fd167f0d78bee"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bd589e6753a1db92bc82ac29faea66f4311edf1759399fd4a14fd167f0d78bee"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "bd589e6753a1db92bc82ac29faea66f4311edf1759399fd4a14fd167f0d78bee"
    sha256 cellar: :any_skip_relocation, ventura: "bd589e6753a1db92bc82ac29faea66f4311edf1759399fd4a14fd167f0d78bee"
    sha256 cellar: :any_skip_relocation, sonoma: "bd589e6753a1db92bc82ac29faea66f4311edf1759399fd4a14fd167f0d78bee"
    sha256 cellar: :any_skip_relocation, sequoia: "bd589e6753a1db92bc82ac29faea66f4311edf1759399fd4a14fd167f0d78bee"
    sha256 cellar: :any_skip_relocation, tahoe: "bd589e6753a1db92bc82ac29faea66f4311edf1759399fd4a14fd167f0d78bee"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
