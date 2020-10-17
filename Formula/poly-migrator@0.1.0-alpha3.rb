class PolyMigratorAT010alpha3 < Formula
  desc "A tool Used to migrate from lein-polyith to the new Polylith tool"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha3/poly-migrator-0.1.0-alpha3.tar.gz"
  sha256 "1eb6bb59350944e3dd0c1d22cf43f32170aac8a2532919b22be36d71eb028d0a"
  license "EPL-1.0"

  bottle :unneeded

  depends_on :java => "1.8+"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
