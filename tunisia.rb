class Tunisia < Formula
  desc "A Carthage cache dependant on Swift, Xcode and library version."
  homepage "https://github.com/minuscorp/Tunisia"
  url "https://github.com/minuscorp/Tunisia/archive/v0.0.5.tar.gz"
  sha256 "d1e7d5e22ac7908f45a648995d7b07118d5ca8355f26a95dc38f7e6bfb1e03af"

  depends_on xcode: ["11.2", :build, :test]

  def install
    system("make")
    bin.install(".build/release/tunisia")
  end

  test do
    assert_match(version.to_s, shell_output("#{bin}/tunisia --version"))
  end
end
