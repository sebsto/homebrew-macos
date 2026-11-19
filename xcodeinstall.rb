class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "137bb02e75449455e6451c94295c6f5cf7b7b1ea6926d8d474a8390f98a88cd5"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v1.2.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "fb020d01898b41abeb44fffc9e456fc5b82bf358a93f4ffeaf294e70fa5c5e2c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "fb020d01898b41abeb44fffc9e456fc5b82bf358a93f4ffeaf294e70fa5c5e2c"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "fb020d01898b41abeb44fffc9e456fc5b82bf358a93f4ffeaf294e70fa5c5e2c"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "fb020d01898b41abeb44fffc9e456fc5b82bf358a93f4ffeaf294e70fa5c5e2c"
    sha256 cellar: :any_skip_relocation, ventura: "fb020d01898b41abeb44fffc9e456fc5b82bf358a93f4ffeaf294e70fa5c5e2c"
    sha256 cellar: :any_skip_relocation, sonoma: "fb020d01898b41abeb44fffc9e456fc5b82bf358a93f4ffeaf294e70fa5c5e2c"
    sha256 cellar: :any_skip_relocation, sequoia: "fb020d01898b41abeb44fffc9e456fc5b82bf358a93f4ffeaf294e70fa5c5e2c"
    sha256 cellar: :any_skip_relocation, tahoe: "fb020d01898b41abeb44fffc9e456fc5b82bf358a93f4ffeaf294e70fa5c5e2c"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
