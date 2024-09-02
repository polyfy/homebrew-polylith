class PolyAT0221 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.21/poly-0.2.21.tar.gz"
  sha256 "8cf74e5a9e9d639911477fd6cc77393e80dca52f4d0f209425259ba408280e4e"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
