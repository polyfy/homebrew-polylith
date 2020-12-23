class PolyMigratorAT010Alpha8 < Formula
  desc "A tool Used to migrate from lein-polyith to the new Polylith tool"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha8/poly-migrator-0.1.0-alpha8.tar.gz"
  sha256 "2566c2a1e19abf6bdb0dc278c97e1037d3b2af29b788c5664945f7613cc5e317"
  license "EPL-1.0"

  bottle :unneeded

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
