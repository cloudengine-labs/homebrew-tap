class SbomSentinel < Formula
  desc "Generate SBOMs, aggregate vulnerability findings, and plan remediation"
  homepage "https://github.com/cloudengine-labs/homebrew-tap"
  license "Apache-2.0"

  # The scanners sbom-sentinel drives.
  depends_on "grype"
  depends_on "syft"
  depends_on "trivy"

  on_macos do
    on_arm do
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.3.2/sbom-sentinel-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "782dd02e691d095b3254dc4f2df8e60bb6220ea04dcce1de7057e3cb5175f441"
    end
    on_intel do
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.3.2/sbom-sentinel-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "800b6309548c1b1b935011a3ade6b6f2ab2a3b6d07dfd907074484a9d6a9d66c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.3.2/sbom-sentinel-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01376d91057e9c2e9e8530d7656a68fd4d9c09dac553ce45c4eaee5d7fb7bf56"
    end
    on_intel do
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.3.2/sbom-sentinel-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df20a72cda1992099d287a8ed0e7e3811eb1dc50cce3cec5f2e2c2bff0f13e59"
    end
  end

  def install
    bin.install "sbom-sentinel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbom-sentinel --version")
  end
end
