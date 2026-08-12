class Xcodeinstall < Formula
  desc "This is a command-line tool to download and install Apple's Xcode"
  homepage "https://github.com/sebsto/xcodeinstall"
  url "https://github.com/sebsto/xcodeinstall/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "943767e1fcba739885030d9126f63725e58d626f5b811c32cf8880ec19817702"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/sebsto/xcodeinstall/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "1128e4c83c330f2666f2934c74b8192fa46727d5b498fe164b4900dcfc06bbb5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "1128e4c83c330f2666f2934c74b8192fa46727d5b498fe164b4900dcfc06bbb5"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1128e4c83c330f2666f2934c74b8192fa46727d5b498fe164b4900dcfc06bbb5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "1128e4c83c330f2666f2934c74b8192fa46727d5b498fe164b4900dcfc06bbb5"
    sha256 cellar: :any_skip_relocation, ventura: "1128e4c83c330f2666f2934c74b8192fa46727d5b498fe164b4900dcfc06bbb5"
    sha256 cellar: :any_skip_relocation, sonoma: "1128e4c83c330f2666f2934c74b8192fa46727d5b498fe164b4900dcfc06bbb5"
    sha256 cellar: :any_skip_relocation, sequoia: "1128e4c83c330f2666f2934c74b8192fa46727d5b498fe164b4900dcfc06bbb5"
    sha256 cellar: :any_skip_relocation, tahoe: "1128e4c83c330f2666f2934c74b8192fa46727d5b498fe164b4900dcfc06bbb5"
  end

  def install
    bin.install "xcodeinstall"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcodeinstall --version").chomp
  end
end
