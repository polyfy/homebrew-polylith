class PolyAT010Alpha3 < Formula
  desc "A tool used to develop Polylith based architectures in Clojure"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha3/poly-0.1.0-alpha3.tar.gz"
  sha256 "186c94f58e96cdb6afe29c9837e21715e2076abaea4737259d7559be45ea264c"
  license "EPL-1.0"

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
