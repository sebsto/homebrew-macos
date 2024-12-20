# Generated by following instructions at
# https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74
# https://medium.com/@mxcl/maintaining-a-homebrew-tap-for-swift-projects-7287ed379324

class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v0.10.1.tar.gz"
  sha256 "0e012e6b0f22e39f11a786accd42927a7f90253adc717bf30dee28143af6011e"
  license "Apache-2.0"

  # insert bottle definition here
  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v0.10.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "82b346eee91fadd6868036f4a5631088c5e4d159788f6474ac15903d2612b34f"
    sha256 cellar: :any_skip_relocation, ventura: "82b346eee91fadd6868036f4a5631088c5e4d159788f6474ac15903d2612b34f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "82b346eee91fadd6868036f4a5631088c5e4d159788f6474ac15903d2612b34f"
    sha256 cellar: :any_skip_relocation, sonoma: "82b346eee91fadd6868036f4a5631088c5e4d159788f6474ac15903d2612b34f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "82b346eee91fadd6868036f4a5631088c5e4d159788f6474ac15903d2612b34f"
    sha256 cellar: :any_skip_relocation, sequoia: "82b346eee91fadd6868036f4a5631088c5e4d159788f6474ac15903d2612b34f"
  end

  def install
    system "./scripts/build_fat_binary.sh"
    bin.install ".build/apple/Products/Release/xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
