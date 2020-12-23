class PolyMigratorAT010Alpha6 < Formula
  desc "A tool Used to migrate from lein-polyith to the new Polylith tool"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha6/poly-migrator-0.1.0-alpha6.tar.gz"
  sha256 "3d86a5b937e633c5dbd0c3caef9e72e4f78ca869f22e9b621f7203113b399721"
  license "EPL-1.0"

  bottle :unneeded

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
