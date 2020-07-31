class Tunisia < Formula
  desc "A Carthage cache dependant on Swift, Xcode and library version."
  homepage "https://github.com/minuscorp/Tunisia"
  url "https://github.com/minuscorp/Tunisia/archive/v0.0.4.tar.gz"
  sha256 "c7c793df89f4e56deb4f4af3c3caa6b3b4b648d42b5b9fee11a8df6332491612"

  depends_on xcode: ["11.2", :build, :test]

  def install
    system("make")
    bin.install(".build/release/tunisia")
  end

  test do
    assert_match(version.to_s, shell_output("#{bin}/tunisia --version"))
  end
end
