class Dusk < Formula
  desc "A diskutil list wrapper with pretty output"
  homepage "https://github.com/matejstastny/dusk"
  url "https://github.com/matejstastny/dusk/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  def install
    bin.install "src/dusk"
  end

  test do
    # Just check that the script runs and outputs the version
    assert_match version.to_s, shell_output("#{bin}/dusk -v").strip
  end
end
