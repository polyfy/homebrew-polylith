class PolyAT0219 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.19/poly-0.2.19.tar.gz"
  sha256 "6d64bff47ab146c116b1806f6c383b4fd642e4136b142c42364124ac597171ab"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
