class PolyAT010Alpha7 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha7/poly-0.1.0-alpha7.tar.gz"
  sha256 "10ecc3fef1edbc15ee33219c663bcf55cc40532ef4a0f3479377812602a4460e"
  license "EPL-1.0"

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
