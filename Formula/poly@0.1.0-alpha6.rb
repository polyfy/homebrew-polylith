class PolyAT010Alpha6 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha6/poly-0.1.0-alpha6.tar.gz"
  sha256 "f6f92884711f61aa670fc16f665d390fa69f61bea69a20c25cc8c28b6f49b4aa"
  license "EPL-1.0"

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
