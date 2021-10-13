class PolyAT0213Alpha < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.13-alpha/poly-0.2.13-alpha.tar.gz"
  sha256 "7fcb172f9f3f691662097f3f34ae87b00103a5063ef2941e035351b7cff99b08"
  license "EPL-1.0"

  bottle :unneeded

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
