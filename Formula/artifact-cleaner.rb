class ArtifactCleaner < Formula
  desc "Find and remove stale build artifacts like node_modules, dist and .terraform"
  homepage "https://github.com/chefgs/artifact-cleaner"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.14.0/artifact-cleaner-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "55c5e8146334d2c04be09e5774ec593b95cbc042faa264fe72c0762aabfe3c8f"
    end
    on_intel do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.14.0/artifact-cleaner-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc328ad2c5bb621bdde285c41bca0675b6c18246b157c9fb5c2c9006d86fa0ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.14.0/artifact-cleaner-v0.14.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ef8baf089320ebd5877d0a1fd56c8b9268fbeba2768679acbecd3289c207cb78"
    end
    on_intel do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.14.0/artifact-cleaner-v0.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1543801d4bae6fe285e76060349b57a57ef7de15ea03c4dde8b96d5f34c7df8"
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
