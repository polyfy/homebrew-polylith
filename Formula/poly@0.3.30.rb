class PolyAT0330 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.3.30/poly-0.3.30.tar.gz"
  sha256 "016d916dd04f3708ef92e80faac649e315c4930aead900d5f19de835553acc2d"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
