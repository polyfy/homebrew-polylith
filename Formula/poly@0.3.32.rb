class PolyAT0332 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.3.32/poly-0.3.32.tar.gz"
  sha256 "c398632e160b4d94f83c0d1ccde50e9fab75a2c4ee9abef04892522a05448bfc"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
