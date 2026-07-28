class Ika < Formula
  desc "Ika Network CLI - Decentralized MPC signing network on Sui"
  homepage "https://ika.xyz"
  version "1.2.6"
  license "BSD-3-Clause-Clear"

  on_macos do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-arm64.tar.gz"
      sha256 "c5f93f2d7d06240b40fa9eb6d823864505965578863da90370a929fa20de19c7" # macos-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-x64.tar.gz"
      sha256 "391ac85600c903079db0b116c4fd8e7f5a6e572776905b1ab328e374b4a2c105" # macos-x64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-arm64.tar.gz"
      sha256 "f622d6c777d598bff3539d7e8c53d34ebe356c7a970f0026391c08f87a9dc7ba" # linux-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-x64.tar.gz"
      sha256 "be076ed22bd763621ecc3d7a6819529e8d7b41bb2795b629f1ce286d7b386331" # linux-x64
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
