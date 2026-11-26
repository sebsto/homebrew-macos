class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "45999f6606b5d03f03ee4bc83ce425570d150bb55c0a22763fdbe5032f98c77a"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v1.2.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "c26c2e3b2f759f70afaeef702022f976daa2fc4370508a1c6672e6e1243eb9c5"
    sha256 cellar: :any_skip_relocation, ventura: "c26c2e3b2f759f70afaeef702022f976daa2fc4370508a1c6672e6e1243eb9c5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c26c2e3b2f759f70afaeef702022f976daa2fc4370508a1c6672e6e1243eb9c5"
    sha256 cellar: :any_skip_relocation, sonoma: "c26c2e3b2f759f70afaeef702022f976daa2fc4370508a1c6672e6e1243eb9c5"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c26c2e3b2f759f70afaeef702022f976daa2fc4370508a1c6672e6e1243eb9c5"
    sha256 cellar: :any_skip_relocation, sequoia: "c26c2e3b2f759f70afaeef702022f976daa2fc4370508a1c6672e6e1243eb9c5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "9c6805c73dbc916d07822e741c40d342611d854f4f10e52708d3ed48e948cf02"
    sha256 cellar: :any_skip_relocation, tahoe: "9c6805c73dbc916d07822e741c40d342611d854f4f10e52708d3ed48e948cf02"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
