class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.14.5.tar.gz"
  sha256 "9232d79663dfd8899e4974d3b0f8eb10b7dbaddd84345d32e62a25a02f0b72c0"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.14.5"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "78cf28e62ed32b0053c72d5240e5b9d4adb803d00b33eabf592693cb7c1172e1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "78cf28e62ed32b0053c72d5240e5b9d4adb803d00b33eabf592693cb7c1172e1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "78cf28e62ed32b0053c72d5240e5b9d4adb803d00b33eabf592693cb7c1172e1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "78cf28e62ed32b0053c72d5240e5b9d4adb803d00b33eabf592693cb7c1172e1"
    sha256 cellar: :any_skip_relocation, ventura: "78cf28e62ed32b0053c72d5240e5b9d4adb803d00b33eabf592693cb7c1172e1"
    sha256 cellar: :any_skip_relocation, sonoma: "78cf28e62ed32b0053c72d5240e5b9d4adb803d00b33eabf592693cb7c1172e1"
    sha256 cellar: :any_skip_relocation, sequoia: "78cf28e62ed32b0053c72d5240e5b9d4adb803d00b33eabf592693cb7c1172e1"
    sha256 cellar: :any_skip_relocation, tahoe: "78cf28e62ed32b0053c72d5240e5b9d4adb803d00b33eabf592693cb7c1172e1"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
