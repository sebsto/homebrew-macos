class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.17.0.tar.gz"
  sha256 "560886a45420e863142f19da6b3179580af2d99472b34ae5f1ef03e27d2526f6"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.17.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "37f18ac029a3981ec6823006666f86e40f85813cd5ba11891ccb3b53d88ef30b"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "37f18ac029a3981ec6823006666f86e40f85813cd5ba11891ccb3b53d88ef30b"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "37f18ac029a3981ec6823006666f86e40f85813cd5ba11891ccb3b53d88ef30b"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "37f18ac029a3981ec6823006666f86e40f85813cd5ba11891ccb3b53d88ef30b"
    sha256 cellar: :any_skip_relocation, ventura: "37f18ac029a3981ec6823006666f86e40f85813cd5ba11891ccb3b53d88ef30b"
    sha256 cellar: :any_skip_relocation, sonoma: "37f18ac029a3981ec6823006666f86e40f85813cd5ba11891ccb3b53d88ef30b"
    sha256 cellar: :any_skip_relocation, sequoia: "37f18ac029a3981ec6823006666f86e40f85813cd5ba11891ccb3b53d88ef30b"
    sha256 cellar: :any_skip_relocation, tahoe: "37f18ac029a3981ec6823006666f86e40f85813cd5ba11891ccb3b53d88ef30b"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
