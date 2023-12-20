class PolyAT0218 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.18/poly-0.2.18.tar.gz"
  sha256 "a33f53dec2ae19a6f459b7b78f032fefe4927821355064dd382c1a7bc4840343"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
