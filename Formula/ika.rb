class Ika < Formula
  desc "Ika Network CLI - Decentralized MPC signing network on Sui"
  homepage "https://ika.xyz"
  version "1.2.4"
  license "BSD-3-Clause-Clear"

  on_macos do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/v#{version}/ika-v#{version}-macos-arm64.tar.gz"
      sha256 "9db4c47c51f14749b369e9a3bb1ca2434a6bfc623e9157a94db19b514100e22e" # macos-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/v#{version}/ika-v#{version}-macos-x64.tar.gz"
      sha256 "826089d034a6e61713a55060fdad2e60f42bd1ef371644c308f55041eb6e99e4" # macos-x64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/v#{version}/ika-v#{version}-linux-arm64.tar.gz"
      sha256 "ad7966d44473a3ef304dfe7ef96dd81eedb1b18d0e690ec977866cdb0eb71f66" # linux-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/v#{version}/ika-v#{version}-linux-x64.tar.gz"
      sha256 "6162d3f5bab005ce4fdfc9d59a005f63828e65a13cdcf68056e7b8cda812153d" # linux-x64
    end
  end

  depends_on "sui"

  def install
    bin.install "ika"
  end

  test do
    assert_match "ika", shell_output("#{bin}/ika --version")
  end
end
