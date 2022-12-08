class PolyAT0216Alpha < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.16-alpha/poly-0.2.16-alpha.tar.gz"
  sha256 "0a502d53526c174b7237904b1dd4d6471c214ab56402037a00d9c178fef6df6b"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
