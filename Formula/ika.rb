class Ika < Formula
  desc "Ika Network CLI - Decentralized MPC signing network on Sui"
  homepage "https://ika.xyz"
  version "1.2.5"
  license "BSD-3-Clause-Clear"

  on_macos do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/mainnet-v#{version}/ika-mainnet-v#{version}-macos-arm64.tar.gz"
      sha256 "54334ae6a43eb519f773ab3530f91911b07d1ccebb7cd31e795a82752cdc25a8" # macos-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/mainnet-v#{version}/ika-mainnet-v#{version}-macos-x64.tar.gz"
      sha256 "20182d37e0d1e1b687356aae8f65e2b0726d1337b59b23df647e11c12bc2f932" # macos-x64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/mainnet-v#{version}/ika-mainnet-v#{version}-linux-arm64.tar.gz"
      sha256 "680a85a166b435ab2f65e13f0dc84cc8b68b6ee018d71117f6e7d483f39af8fd" # linux-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/mainnet-v#{version}/ika-mainnet-v#{version}-linux-x64.tar.gz"
      sha256 "15262768f6a1c36fa0f5eca8e67878aafcd909e3910b7305cccd6b4c6ae4ae09" # linux-x64
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
