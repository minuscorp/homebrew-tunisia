class Tunisia < Formula
  desc "A Carthage cache dependant on Swift, Xcode and library version."
  homepage "https://github.com/minuscorp/Tunisia"
  url "https://github.com/minuscorp/Tunisia/archive/v0.0.3.tar.gz"
  sha256 "0d678100042588d3a606f545e590809abdf723acb3668485adf705fd2f607186"

  depends_on xcode: ["11.2", :build, :test]

  def install
    system("make")
    bin.install(".build/release/tunisia")
  end

  test do
    assert_match(version.to_s, shell_output("#{bin}/tunisia --version"))
  end
end
