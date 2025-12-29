class PolyAT0332 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.3.32/poly-0.3.32.tar.gz"
  sha256 "b2ef2df0c7d98b05fb8740ec9709df152a13c8df1dee9a36fda4d39bc8cd4c30"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
