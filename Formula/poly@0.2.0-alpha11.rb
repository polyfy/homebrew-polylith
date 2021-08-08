class PolyAT020Alpha11 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.2.0-alpha11/poly-0.2.0-alpha11.tar.gz"
  sha256 "7e574affb19997e323f8738f4276309522eda4a5ed3ccba4b1758045e84ab64e"
  license "EPL-1.0"

  bottle :unneeded

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
