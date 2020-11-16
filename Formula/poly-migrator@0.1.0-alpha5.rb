class PolyMigratorAT010Alpha5 < Formula
  desc "A tool Used to migrate from lein-polyith to the new Polylith tool"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha5/poly-migrator-0.1.0-alpha5.tar.gz"
  sha256 "b43cba621c8f0a5e21b1a71dacacaa96a3700bf6060f7caaa8dbf67dcf5f44d1"
  license "EPL-1.0"

  bottle :unneeded

  depends_on :java => "1.8+"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
