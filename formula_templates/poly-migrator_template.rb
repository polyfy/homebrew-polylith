class PolyMigratorVERSION_NAME < Formula
  desc "A tool Used to migrate from lein-polyith to the new Polylith tool"
  homepage "https://github.com/polyfy/polylith"
  url "URL"
  sha256 "SHASUM"
  license "EPL-1.0"

  bottle :unneeded

  uses_from_macos "ruby" => :build

  def install
    system "./install.sh", prefix
  end
end
