class PolyAT0220 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.20/poly-0.2.20.tar.gz"
  sha256 "d63cffaf4229dd1d6012e1156ab1ed837f87afadfd014d7cb416ef705709cca6"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
