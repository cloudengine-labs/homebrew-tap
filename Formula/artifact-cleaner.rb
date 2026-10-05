class ArtifactCleaner < Formula
  desc "Find and remove stale build artifacts like node_modules, dist and .terraform"
  homepage "https://github.com/chefgs/artifact-cleaner"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.12.0/artifact-cleaner-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "5c814599b36e4be059a55375ded4fd5eedb44ee95ff07bf5871505056d9148c5"
    end
    on_intel do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.12.0/artifact-cleaner-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "650c14de838150bc990ee0ea9b801a70c50e614ac1a380054ca77c42b1130e2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.12.0/artifact-cleaner-v0.12.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7027dd3080354bb3737862aef2f2f9a24171aa053260c8a537a6ed2cd7312aab"
    end
    on_intel do
      url "https://github.com/chefgs/artifact-cleaner/releases/download/v0.12.0/artifact-cleaner-v0.12.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3493244c6721c074f351409622e3de8f5b11b04124384b940fe0e0bf850f8712"
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
