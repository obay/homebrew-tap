# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfren < Formula
  desc "A tool to rename Terraform files accodrind to the resource type and name."
  homepage "https://github.com/obay/tfren"
  version "0.1.17"

  depends_on "go" => :build

  on_macos do
    if Hardware::CPU.arm?
      url "http://github.com/obay/tfren/releases/download/v0.1.17/tfren_0.1.17_Darwin_arm64.tar.gz"
      sha256 "cd877cc25e9811e6369bbb5657fd5c90d4d97b88a937306110088c5a7e57fc5c"

      def install
        bin.install "tfren"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/obay/tfren/releases/download/v0.1.17/tfren_0.1.17_Darwin_x86_64.tar.gz"
      sha256 "5513731b637f49d6484b6ffe9e56bca90ea927f016390037cf320ed2b26d8e00"

      def install
        bin.install "tfren"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/obay/tfren/releases/download/v0.1.17/tfren_0.1.17_Linux_arm64.tar.gz"
      sha256 "13c3ecef6220888399f62b59fbf2e42e906432f548c97b9708b8b6f4f56a5e70"

      def install
        bin.install "tfren"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/obay/tfren/releases/download/v0.1.17/tfren_0.1.17_Linux_x86_64.tar.gz"
      sha256 "c2b396f1699e610a8ac3447279a363b40b71dc55be255d7f15274d94f86ab3fa"

      def install
        bin.install "tfren"
      end
    end
  end

  test do
    assert shell_output("#{bin}/tfren version")
  end
end
