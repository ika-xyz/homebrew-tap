class Ika < Formula
  desc "Ika Network CLI - Decentralized MPC signing network on Sui"
  homepage "https://ika.xyz"
  version "1.2.7"
  license "BSD-3-Clause-Clear"

  on_macos do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-arm64.tar.gz"
      sha256 "bb69a4577a74d665d70c396d5ba10a051618b5c614757280dc9ec10e2742b22f" # macos-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-x64.tar.gz"
      sha256 "bd663485e0f4c1bce07b5244600746223c889088b52500332412f1709ce5ddb8" # macos-x64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-arm64.tar.gz"
      sha256 "76a3a07fb46e71344c10374222c4e58599e9a81c4b58e385bb549c118c0b200a" # linux-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-x64.tar.gz"
      sha256 "d6a38b4bd0c03c8d625c07add9f1e349af67c22c072d43c355562a06eb8f2bfc" # linux-x64
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
