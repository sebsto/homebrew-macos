class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.22.0.tar.gz"
  sha256 "01a1958a2a58ec8f59c20dad4761ab85109e8f14afac1dee8b79d0ff943129e3"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.22.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "fe1d606add8f6d6f210091b91dfe0ea363f55e017b335ce9adf606574ae8f59c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "fe1d606add8f6d6f210091b91dfe0ea363f55e017b335ce9adf606574ae8f59c"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "fe1d606add8f6d6f210091b91dfe0ea363f55e017b335ce9adf606574ae8f59c"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "fe1d606add8f6d6f210091b91dfe0ea363f55e017b335ce9adf606574ae8f59c"
    sha256 cellar: :any_skip_relocation, ventura: "fe1d606add8f6d6f210091b91dfe0ea363f55e017b335ce9adf606574ae8f59c"
    sha256 cellar: :any_skip_relocation, sonoma: "fe1d606add8f6d6f210091b91dfe0ea363f55e017b335ce9adf606574ae8f59c"
    sha256 cellar: :any_skip_relocation, sequoia: "fe1d606add8f6d6f210091b91dfe0ea363f55e017b335ce9adf606574ae8f59c"
    sha256 cellar: :any_skip_relocation, tahoe: "fe1d606add8f6d6f210091b91dfe0ea363f55e017b335ce9adf606574ae8f59c"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
