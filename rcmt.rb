class rcmt < Formula
    desc "A rudimentary configuration management tool for Slack Challenge."
    homepage "https://github.com/obay/rcmt"
    url "https://github.com/obay/rcmt/archive/refs/tags/v0.1.tar.gz"
    sha256 "2462cca9420367fd6215e9d5c747b4a76b638d91"
  
    depends_on "go"
  
    def install
      ENV["GOPATH"] = buildpath
      bin_path = buildpath/"src/github.com/obay/rcmt"
      bin_path.install Dir["*"]
      cd bin_path do
      system "go", "build", "-o", bin/"rcmt", "."
      end
    end
  
    test do
      # assert_match /Simple port-forward wrapper tool for multiple pods/, shell_output("#{bin}/kubepfm -h", 0)
      assert_match "rcmt v0.1", shell_output("#{bin}/rcmt version 2>&1", 2)
    end
  end