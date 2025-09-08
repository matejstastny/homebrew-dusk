class Dusk < Formula
  desc "A diskutil list wrapper with pretty output"
  homepage "https://github.com/my-daarlin/dusk"
  url "https://github.com/my-daarlin/dusk/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "70ddff974520b4eee891d96c267b6ff13a32db414da7c58c8bb9703bc216a50a"
  license "MIT"

  def install
    bin.install "src/dusk"
  end

  test do
    # Just check that the script runs and outputs the version
    assert_match version.to_s, shell_output("#{bin}/dusk -v").strip
  end
end
