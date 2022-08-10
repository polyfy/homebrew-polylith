class PolyAT0215Alpha < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.15-alpha/poly-0.2.15-alpha.tar.gz"
  sha256 "f0e410743ae8ff229aa962bce3af9f66f87ed065f0f47a92e2dc9ae002b6db75"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
