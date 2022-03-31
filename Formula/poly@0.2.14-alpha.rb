class PolyAT0214Alpha < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.14-alpha/poly-0.2.14-alpha.tar.gz"
  sha256 "027cddf1f818027c1ec28d233167a689fec7c0ba49daaf84198841642fb6c9bf"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
