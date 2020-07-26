class Tunisia < Formula
  desc "A Carthage cache dependant on Swift, Xcode and library version."
  homepage "https://github.com/minuscorp/Tunisia"
  url "https://github.com/minuscorp/Tunisia/archive/v0.0.1.tar.gz"
  sha256 "af405f183981a3ab87e30553855c92641a11c26f332234919cab7e613f1c4208"

  depends_on xcode: ["11.2", :build, :test]

  def install
    system("make")
    bin.install(".build/release/tunisia")
  end

  test do
    assert_match(version.to_s, shell_output("#{bin}/tunisia --version"))
  end
end
