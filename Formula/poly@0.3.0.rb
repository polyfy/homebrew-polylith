class PolyAT030 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.3.0/poly-0.3.0.tar.gz"
  sha256 "eaeda5431261a3b3f521576eaab8a1606a9effcb59bb0e6225d520debb553ef6"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
