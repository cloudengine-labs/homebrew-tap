class ArtifactCleaner < Formula
  desc "Find and remove stale build artifacts like node_modules, dist and .terraform"
  homepage "https://github.com/chefgs/artifact-cleaner"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.13.0/artifact-cleaner-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "9924387828fdb57fc7d34e54bfc95e7a5e31faf2deb253f10193c4728a9a0d42"
    end
    on_intel do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.13.0/artifact-cleaner-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "83ed9deb4ecb9ea56cc32ffc14ccf6ab040b639f0e68a1dcfac271b2dadf7635"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.13.0/artifact-cleaner-v0.13.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6b67ef6f81881ac529e1b36dc7891e1b5a553cb753da30474c60160813cd7ed"
    end
    on_intel do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.13.0/artifact-cleaner-v0.13.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a441278e39c1a128ab4f33ec6a362af6c355cb8cee4bcd1ce67992c3755330f2"
    end
  end

  def install
    bin.install "artifact-cleaner"
    bin.install "afc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/afc --version")
  end
end
