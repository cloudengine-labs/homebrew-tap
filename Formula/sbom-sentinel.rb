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
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.2.0/sbom-sentinel-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a118cc245e9c6b98f22567ef543136c4dddc9acb8f5ab6b662ffbc3d60468c8"
    end
    on_intel do
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.2.0/sbom-sentinel-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "c7f02c0b6d3ff14d0ad0a487b59e78269cec7f4c36786263f8fecef2f744fb10"
    end
  end

  def install
    bin.install "sbom-sentinel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbom-sentinel --version")
  end
end
