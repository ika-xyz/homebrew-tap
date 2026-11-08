class Ika < Formula
  desc "Ika Network CLI - Decentralized MPC signing network on Sui"
  homepage "https://ika.xyz"
  version "1.4.3"
  license "BSD-3-Clause-Clear"

  on_macos do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-arm64.tar.gz"
      sha256 "b08c76dead19361d16bff403849d039f2ead69bb3138ea74402d41d813b6950f" # macos-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-x64.tar.gz"
      sha256 "8abb392e9c74294fef3431e8e3897d3e77741104a039902a05bc02f3ecd17002" # macos-x64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-arm64.tar.gz"
      sha256 "961d62e7532083370e41d7828e24ba4910dc046bf44d3b7b73e4a0f19ffd2f5e" # linux-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-x64.tar.gz"
      sha256 "9438089f40f6a899a506b2aefe70e0168ffcdac00c6902ef1670706e0ec43384" # linux-x64
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
