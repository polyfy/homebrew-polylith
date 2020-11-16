class PolyAT010Alpha5 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha5/poly-0.1.0-alpha5.tar.gz"
  sha256 "e4c40b33b40ea3c8d691bf3e62e6175a16e0fc327353052f55337fe80d7edfa3"
  license "EPL-1.0"

  bottle :unneeded

  depends_on :java => "1.8+"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
