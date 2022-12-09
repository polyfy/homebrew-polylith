class PolyAT0217Alpha < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.17-alpha/poly-0.2.17-alpha.tar.gz"
  sha256 "bb99336eb0a5604e6639c8a0184d7bf0daa6aa5443ec7ff478a7696dae2063f8"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
