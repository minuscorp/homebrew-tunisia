class Tunisia < Formula
  desc "A Carthage cache dependant on Swift, Xcode and library version."
  homepage "https://github.com/minuscorp/Tunisia"
  url "https://github.com/minuscorp/Tunisia/archive/v0.0.2.tar.gz"
  sha256 "d3382deefa6a282b1218cbbf56581fc48642c388f6bb3154ae5bdca63e4f1340"

  depends_on xcode: ["11.2", :build, :test]

  def install
    system("make")
    bin.install(".build/release/tunisia")
  end

  test do
    assert_match(version.to_s, shell_output("#{bin}/tunisia --version"))
  end
end
