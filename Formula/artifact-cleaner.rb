class ArtifactCleaner < Formula
  desc "Find and remove stale build artifacts like node_modules, dist and .terraform"
  homepage "https://github.com/chefgs/artifact-cleaner"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.14.1/artifact-cleaner-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "92d96e05cb94d2f0c0ee6ab17e7aa4d29190057c7a0f1205da1bd6191f41cc5f"
    end
    on_intel do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.14.1/artifact-cleaner-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "df01c39f54fa2b82f33a795fe06ed7f1ab66eb3593e3989705536192bda3ce09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.14.1/artifact-cleaner-v0.14.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a394e34afa83ed8c4dfe9710eb914fea5e5e78eb05af48772cc970975f6271fd"
    end
    on_intel do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.14.1/artifact-cleaner-v0.14.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4a232d2523f57c65e48fd2be15ea41053877f6fbdec47de209b111591faaa78a"
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
