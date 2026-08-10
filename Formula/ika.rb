class Ika < Formula
  desc "Ika Network CLI - Decentralized MPC signing network on Sui"
  homepage "https://ika.xyz"
  version "1.3.0"
  license "BSD-3-Clause-Clear"

  on_macos do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-arm64.tar.gz"
      sha256 "599557cf8fdb93d1f04c0351310a8b32b01b5a801aec2f1a7e1f855100d28b04" # macos-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-x64.tar.gz"
      sha256 "9c4767fb4cc445ac51d82dd0ab341e3cbe703ad18c72a46ac494f3eb0878b101" # macos-x64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-arm64.tar.gz"
      sha256 "99e8eaaeb81a28b25b2d2d2439d33814916833cfab9de0fdfdf1a91a87773965" # linux-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-x64.tar.gz"
      sha256 "27cfa1a18bfda0c6d5c2b3c202f6019a577fb09a98cf65faf71365389910bdfa" # linux-x64
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
