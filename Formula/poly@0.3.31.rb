class PolyAT0331 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.3.31/poly-0.3.31.tar.gz"
  sha256 "16ab3de394898b44f696e2ec9a5ab2f7871760f6cd07893f19539e30e5e39088"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
