class PolyMigratorAT010Alpha4 < Formula
  desc "A tool Used to migrate from lein-polyith to the new Polylith tool"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha4/poly-migrator-0.1.0-alpha4.tar.gz"
  sha256 "65df911aa09c637a6b5fa7cb94aab6b4301290714c0055aeae7f84fd5bcf7657"
  license "EPL-1.0"

  bottle :unneeded

  depends_on :java => "1.8+"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
