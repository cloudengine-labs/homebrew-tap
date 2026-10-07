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
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.1.1/sbom-sentinel-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "7f8ff6be74dc90819b127fb138a1d2f75d2db1ec8ac28dce19cc60cc685eae22"
    end
    on_intel do
      url "https://github.com/cloudengine-labs/homebrew-tap/releases/download/v0.1.1/sbom-sentinel-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "3a6d84262b5e6ee3a4d7ff48e8fe5956e2333c1d7b5699c3567071e5e7413552"
    end
  end

  def install
    bin.install "sbom-sentinel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbom-sentinel --version")
  end
end
