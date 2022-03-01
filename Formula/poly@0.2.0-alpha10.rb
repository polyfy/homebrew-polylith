class PolyAT020Alpha10 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.0-alpha10/poly-0.2.0-alpha10.tar.gz"
  sha256 "34cbb5e38cc86dd2e441a4074b2459884e35ef8c43b52bbcdcc66b873279a69f"
  license "EPL-1.0"

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
