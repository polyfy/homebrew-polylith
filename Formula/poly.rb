class Poly < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.22/poly-0.2.22.tar.gz"
  sha256 "3804244bfddef68ca3a7d17ab8d82f6ed0bb626a72e5a49734949eb60c2fc2a1"
  license "EPL-1.0"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
