class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.17.1.tar.gz"
  sha256 "31d14e5689f8c24e0af7963a50bc72acfa869f0498a4ab2a832b18ff3aa90074"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.17.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "8496aab72558bf99e4ab0aba22d0a5bc6d5519d99bf5ca0dc8123e08ee5e9373"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8496aab72558bf99e4ab0aba22d0a5bc6d5519d99bf5ca0dc8123e08ee5e9373"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8496aab72558bf99e4ab0aba22d0a5bc6d5519d99bf5ca0dc8123e08ee5e9373"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "8496aab72558bf99e4ab0aba22d0a5bc6d5519d99bf5ca0dc8123e08ee5e9373"
    sha256 cellar: :any_skip_relocation, ventura: "8496aab72558bf99e4ab0aba22d0a5bc6d5519d99bf5ca0dc8123e08ee5e9373"
    sha256 cellar: :any_skip_relocation, sonoma: "8496aab72558bf99e4ab0aba22d0a5bc6d5519d99bf5ca0dc8123e08ee5e9373"
    sha256 cellar: :any_skip_relocation, sequoia: "8496aab72558bf99e4ab0aba22d0a5bc6d5519d99bf5ca0dc8123e08ee5e9373"
    sha256 cellar: :any_skip_relocation, tahoe: "8496aab72558bf99e4ab0aba22d0a5bc6d5519d99bf5ca0dc8123e08ee5e9373"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
