class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "38004af34f525d7347fd809280dc710e133f28e4b4805fbcdfbc8033cdbd2529"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.16.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "ad8aa017de8c331c4e8d0d06dd36c56b7122ccdf8ce81ea2bdf94fe5e676f1ac"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ad8aa017de8c331c4e8d0d06dd36c56b7122ccdf8ce81ea2bdf94fe5e676f1ac"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ad8aa017de8c331c4e8d0d06dd36c56b7122ccdf8ce81ea2bdf94fe5e676f1ac"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "ad8aa017de8c331c4e8d0d06dd36c56b7122ccdf8ce81ea2bdf94fe5e676f1ac"
    sha256 cellar: :any_skip_relocation, ventura: "ad8aa017de8c331c4e8d0d06dd36c56b7122ccdf8ce81ea2bdf94fe5e676f1ac"
    sha256 cellar: :any_skip_relocation, sonoma: "ad8aa017de8c331c4e8d0d06dd36c56b7122ccdf8ce81ea2bdf94fe5e676f1ac"
    sha256 cellar: :any_skip_relocation, sequoia: "ad8aa017de8c331c4e8d0d06dd36c56b7122ccdf8ce81ea2bdf94fe5e676f1ac"
    sha256 cellar: :any_skip_relocation, tahoe: "ad8aa017de8c331c4e8d0d06dd36c56b7122ccdf8ce81ea2bdf94fe5e676f1ac"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
