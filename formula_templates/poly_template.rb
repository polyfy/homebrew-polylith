class PolyVERSION_NAME < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "URL"
  sha256 "SHASUM"
  license "EPL-1.0"

  bottle :unneeded

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
