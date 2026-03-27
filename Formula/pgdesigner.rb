class Pgdesigner < Formula
  desc "PostgreSQL schema designer — ERD, linting, diffing, sample data"
  homepage "https://pgdesigner.io"
  version "0.0.2"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/vmkteam/pgdesigner/releases/download/v#{version}/pgdesigner-darwin-arm64.tar.gz"
      sha256 "994a92c07ca621bdf00f6e203c523de9e18f225ae9608312042ba1cf13d0e64f"
    end
    on_intel do
      url "https://github.com/vmkteam/pgdesigner/releases/download/v#{version}/pgdesigner-darwin-amd64.tar.gz"
      sha256 "a9b2800b6a4ec7544f8a0014ce51928d1c4f8d171f739e32aed0983c6a795cc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vmkteam/pgdesigner/releases/download/v#{version}/pgdesigner-linux-arm64.tar.gz"
      sha256 "ceb4872432177087b6cc280a9036f4b0cc9c1a3cbe55b5a9fefdc1df1b28b874"
    end
    on_intel do
      url "https://github.com/vmkteam/pgdesigner/releases/download/v#{version}/pgdesigner-linux-amd64.tar.gz"
      sha256 "13500764944c2e78a42efd899484bb9d374c654947c8445008232cf5a8541b91"
    end
  end

  def install
    bin.install "pgdesigner"
  end

  test do
    system "#{bin}/pgdesigner", "version"
  end
end
