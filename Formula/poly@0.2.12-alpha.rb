class PolyAT0212Alpha < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.12-alpha/poly-0.2.12-alpha.tar.gz"
  sha256 "ff42d7e3cc1625d34b69f6e315c45e27265c1cb78d5ce102ebb0ec11ef943795"
  license "EPL-1.0"

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
