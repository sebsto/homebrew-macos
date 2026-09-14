class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "c2f15f8fc144fb9dab33f5e0c7b96de4020e3664a9157716a3e190b351b8e95e"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v1.1.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "5a736c294d127365f480d581c60c7a43c3d5df2254fb661db3d8fcbfc078836b"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5a736c294d127365f480d581c60c7a43c3d5df2254fb661db3d8fcbfc078836b"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5a736c294d127365f480d581c60c7a43c3d5df2254fb661db3d8fcbfc078836b"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "5a736c294d127365f480d581c60c7a43c3d5df2254fb661db3d8fcbfc078836b"
    sha256 cellar: :any_skip_relocation, ventura: "5a736c294d127365f480d581c60c7a43c3d5df2254fb661db3d8fcbfc078836b"
    sha256 cellar: :any_skip_relocation, sonoma: "5a736c294d127365f480d581c60c7a43c3d5df2254fb661db3d8fcbfc078836b"
    sha256 cellar: :any_skip_relocation, sequoia: "5a736c294d127365f480d581c60c7a43c3d5df2254fb661db3d8fcbfc078836b"
    sha256 cellar: :any_skip_relocation, tahoe: "5a736c294d127365f480d581c60c7a43c3d5df2254fb661db3d8fcbfc078836b"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
