class Frameterm < Formula
  desc "TUI automation for AI agents with video recording"
  homepage "https://github.com/stefanmatar/frameterm"
  version "1.2.0"
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/stefanmatar/frameterm/releases/download/v1.2.0/frameterm-macOS-arm64.tar.gz"
      sha256 "3b0936ab751eae6499ccb61adf4281e62ede91ed44b6e37422debd87a915083f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stefanmatar/frameterm/releases/download/v1.2.0/frameterm-Linux-gnu-arm64.tar.gz"
      sha256 "55b61fea4c39dbe9021162062c91b614378f15f2b6159c6809ed8b6bd581ed62"
    end
    on_intel do
      url "https://github.com/stefanmatar/frameterm/releases/download/v1.2.0/frameterm-Linux-gnu-x86_64.tar.gz"
      sha256 "aefb455567c68cb930f564cb26421dad3dbe92aa503f06b4d95a30c3790792af"
    end
  end

  def install
    bin.install "frameterm"
  end

  test do
    assert_match "frameterm", shell_output("#{bin}/frameterm --help 2>&1", 2)
  end
end
