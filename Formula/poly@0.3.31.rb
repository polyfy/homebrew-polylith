class PolyAT0331 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.3.31/poly-0.3.31.tar.gz"
  sha256 "ae0369304456d8176963f512aa2c303b2ca50d44eb96d3ece9a1834b168a3a5d"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
