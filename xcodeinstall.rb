class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.14.3.tar.gz"
  sha256 "c0b9f706cb14ac2242e6b5c2f18a800c3d1c2d77a87e861b345a3f057cd18243"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.14.3"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "d2945a0f5ef85b5656c9f9705f48aa2a43fe43228b1a90be4c59d8b55692a1e9"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d2945a0f5ef85b5656c9f9705f48aa2a43fe43228b1a90be4c59d8b55692a1e9"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d2945a0f5ef85b5656c9f9705f48aa2a43fe43228b1a90be4c59d8b55692a1e9"
    sha256 cellar: :any_skip_relocation, ventura: "d2945a0f5ef85b5656c9f9705f48aa2a43fe43228b1a90be4c59d8b55692a1e9"
    sha256 cellar: :any_skip_relocation, sonoma: "d2945a0f5ef85b5656c9f9705f48aa2a43fe43228b1a90be4c59d8b55692a1e9"
    sha256 cellar: :any_skip_relocation, sequoia: "d2945a0f5ef85b5656c9f9705f48aa2a43fe43228b1a90be4c59d8b55692a1e9"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
