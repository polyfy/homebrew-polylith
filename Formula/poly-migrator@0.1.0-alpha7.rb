class PolyMigratorAT010Alpha7 < Formula
  desc "A tool Used to migrate from lein-polyith to the new Polylith tool"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha7/poly-migrator-0.1.0-alpha7.tar.gz"
  sha256 "d820ce787b5dec6f0fe8e7ebaa458226e9c54b357fe4dfed3d53a8b615e5dbc3"
  license "EPL-1.0"

  bottle :unneeded

  depends_on :java => "1.8+"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
