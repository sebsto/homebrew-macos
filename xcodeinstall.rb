class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.19.0.tar.gz"
  sha256 "837e116b5d0936f240bb8abcf50f2d23543679030e0c38b6d5bdac58823511aa"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.19.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "41104b00275c6050b293c6c0389eabe5f138b533559c37a48d0af6a4466befc2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "41104b00275c6050b293c6c0389eabe5f138b533559c37a48d0af6a4466befc2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "41104b00275c6050b293c6c0389eabe5f138b533559c37a48d0af6a4466befc2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "41104b00275c6050b293c6c0389eabe5f138b533559c37a48d0af6a4466befc2"
    sha256 cellar: :any_skip_relocation, ventura: "41104b00275c6050b293c6c0389eabe5f138b533559c37a48d0af6a4466befc2"
    sha256 cellar: :any_skip_relocation, sonoma: "41104b00275c6050b293c6c0389eabe5f138b533559c37a48d0af6a4466befc2"
    sha256 cellar: :any_skip_relocation, sequoia: "41104b00275c6050b293c6c0389eabe5f138b533559c37a48d0af6a4466befc2"
    sha256 cellar: :any_skip_relocation, tahoe: "41104b00275c6050b293c6c0389eabe5f138b533559c37a48d0af6a4466befc2"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
