class PolyAT010Alpha4 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha4/poly-0.1.0-alpha4.tar.gz"
  sha256 "b921f956297121541a273dc51d1629431755b100933c4af6e8dd0ef6f1518689"
  license "EPL-1.0"

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
