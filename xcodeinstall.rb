class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.23.0.tar.gz"
  sha256 "580923ec06aa7461242edf4691c979f760c26b7b8d76eda1397e8b2e0bd68878"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.23.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f7ddb08c43fecae20c0d724a42b6ed421cc3d8e0c95bab216598239215134f16"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f7ddb08c43fecae20c0d724a42b6ed421cc3d8e0c95bab216598239215134f16"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f7ddb08c43fecae20c0d724a42b6ed421cc3d8e0c95bab216598239215134f16"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "f7ddb08c43fecae20c0d724a42b6ed421cc3d8e0c95bab216598239215134f16"
    sha256 cellar: :any_skip_relocation, ventura: "f7ddb08c43fecae20c0d724a42b6ed421cc3d8e0c95bab216598239215134f16"
    sha256 cellar: :any_skip_relocation, sonoma: "f7ddb08c43fecae20c0d724a42b6ed421cc3d8e0c95bab216598239215134f16"
    sha256 cellar: :any_skip_relocation, sequoia: "f7ddb08c43fecae20c0d724a42b6ed421cc3d8e0c95bab216598239215134f16"
    sha256 cellar: :any_skip_relocation, tahoe: "f7ddb08c43fecae20c0d724a42b6ed421cc3d8e0c95bab216598239215134f16"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
