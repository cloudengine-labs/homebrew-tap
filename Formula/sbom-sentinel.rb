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
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.3.0/sbom-sentinel-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "84419a9f676c3607cecc474486a924c9992b16165ad2ab9826580c60a4f7d50c"
    end
    on_intel do
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.3.0/sbom-sentinel-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "caa9ad319bae79ebc65919b2aebbca42b634102478d673a07413f2f1b2b65490"
    end
  end

  def install
    bin.install "sbom-sentinel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbom-sentinel --version")
  end
end
