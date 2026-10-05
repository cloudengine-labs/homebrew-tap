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
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.1.0/sbom-sentinel-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d2eea40f35e8d9525049d453068ed3fea57698f48a29ad93cb5d92de88e2e3c"
    end
    on_intel do
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.1.0/sbom-sentinel-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6a871086f32150e767f4d75985e836ea700daa94d3f911f1aaf16074b3ee1823"
    end
  end

  def install
    bin.install "sbom-sentinel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbom-sentinel --version")
  end
end
