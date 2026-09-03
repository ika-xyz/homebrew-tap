class Ika < Formula
  desc "Ika Network CLI - Decentralized MPC signing network on Sui"
  homepage "https://ika.xyz"
  version "1.4.1"
  license "BSD-3-Clause-Clear"

  on_macos do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-arm64.tar.gz"
      sha256 "3c3444ebc049438ca26766dc70a049f610d56c759eb547ea50d0a185b76deb44" # macos-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-macos-x64.tar.gz"
      sha256 "07892bba779d06ffecaaae157d5ebd43bfa4e73776d4713d1a55d4476f550690" # macos-x64
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-arm64.tar.gz"
      sha256 "2eaf37b48eaf376dae401c6c4e1071efd7406006d6d9c729932feefa475ea965" # linux-arm64
    end

    on_intel do
      url "https://github.com/dwallet-labs/ika/releases/download/release/mainnet-v#{version}/ika-mainnet-v#{version}-linux-x64.tar.gz"
      sha256 "a6aa4d0683bcaef0cf044cfd28a163873c906fd0f19fc3c262c2701e10288971" # linux-x64
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
