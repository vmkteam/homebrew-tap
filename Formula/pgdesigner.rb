class Pgdesigner < Formula
  desc "PostgreSQL schema designer — ERD, linting, diffing, sample data"
  homepage "https://pgdesigner.io"
  version "0.0.1"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/vmkteam/pgdesigner/releases/download/v#{version}/pgdesigner-darwin-arm64.tar.gz"
      sha256 "40f319843d23fa06ba9d4db2748ecef3524e38466f5a42b119e330a34b901fa1"
    end
    on_intel do
      url "https://github.com/vmkteam/pgdesigner/releases/download/v#{version}/pgdesigner-darwin-amd64.tar.gz"
      sha256 "68c372ba5227f20faa86ae3d82e32b941ad2ec6fac77b66278c3f35932df33e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vmkteam/pgdesigner/releases/download/v#{version}/pgdesigner-linux-arm64.tar.gz"
      sha256 "18ab0bfb16a5b6c0bf59cea518b3169585ba8c61cd2ab7c5bf9721e1949bdf6d"
    end
    on_intel do
      url "https://github.com/vmkteam/pgdesigner/releases/download/v#{version}/pgdesigner-linux-amd64.tar.gz"
      sha256 "6336c01436c12e1ecf57df3d664b9015e90b80255962977ccd278aa46eaebc24"
    end
  end

  def install
    bin.install "pgdesigner"
  end

  test do
    system "#{bin}/pgdesigner", "version"
  end
end
