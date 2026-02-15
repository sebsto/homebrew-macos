class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.17.2.tar.gz"
  sha256 "6e9419bc9e618b68efe6619bed51e0947486e170c257f330a7122b3eaae21de3"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.17.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "efe15089ca8b824d9150b00ed27a9285ab7e053935c637103dd364d94539a4c2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "efe15089ca8b824d9150b00ed27a9285ab7e053935c637103dd364d94539a4c2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "efe15089ca8b824d9150b00ed27a9285ab7e053935c637103dd364d94539a4c2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "efe15089ca8b824d9150b00ed27a9285ab7e053935c637103dd364d94539a4c2"
    sha256 cellar: :any_skip_relocation, ventura: "efe15089ca8b824d9150b00ed27a9285ab7e053935c637103dd364d94539a4c2"
    sha256 cellar: :any_skip_relocation, sonoma: "efe15089ca8b824d9150b00ed27a9285ab7e053935c637103dd364d94539a4c2"
    sha256 cellar: :any_skip_relocation, sequoia: "efe15089ca8b824d9150b00ed27a9285ab7e053935c637103dd364d94539a4c2"
    sha256 cellar: :any_skip_relocation, tahoe: "efe15089ca8b824d9150b00ed27a9285ab7e053935c637103dd364d94539a4c2"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
