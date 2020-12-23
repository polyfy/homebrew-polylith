class PolyAT010Alpha2 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha2/poly-0.1.0-alpha2.tar.gz"
  sha256 "7a96b214652dbe91bb2d7061c736846bb280650f4c792b6fbe0d044c2fbcfb8a"
  license "EPL-1.0"

  bottle :unneeded

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
