class PolyMigrator < Formula
  desc "A tool Used to migrate from lein-polyith to the new Polylith tool"
  homepage "https://github.com/polyfy/polylith"
  url "https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha9/poly-migrator-0.1.0-alpha9.tar.gz"
  sha256 "f2e46261e3fc0e95b1f5c3fa9cca8113c500d1636ade270e5fce6610a60dff25"
  license "EPL-1.0"

  bottle :unneeded

  depends_on "openjdk"

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
    bin.env_script_all_files libexec/"bin", Language::Java.overridable_java_home_env
  end
end
