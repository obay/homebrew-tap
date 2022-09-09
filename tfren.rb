# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfren < Formula
  desc "A tool to rename Terraform files accodrind to the resource type and name."
  homepage "https://github.com/obay/tfren"
  version "0.1.6"

  depends_on "go" => :build

  on_macos do
    if Hardware::CPU.arm?
      url "http://github.com/obay/tfren/releases/download/v0.1.6/tfren_0.1.6_Darwin_arm64.tar.gz"
      sha256 "fd9d766b7e212c9c3fcd0b0fb982bedf485f66a830e4a702f23fa10216f2d137"

      def install
        bin.install "tfren"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/obay/tfren/releases/download/v0.1.6/tfren_0.1.6_Darwin_x86_64.tar.gz"
      sha256 "0a147781e5e4a90bc4b9d5d0b13e91a36e8007f67725e136943d6161895c3447"

      def install
        bin.install "tfren"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/obay/tfren/releases/download/v0.1.6/tfren_0.1.6_Linux_arm64.tar.gz"
      sha256 "1ad69e4fbeccf76b44c0b50a89032c3c69398a64bf425a17b329151c6e672a76"

      def install
        bin.install "tfren"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/obay/tfren/releases/download/v0.1.6/tfren_0.1.6_Linux_x86_64.tar.gz"
      sha256 "bd8e77a27623a6ce905a0d332c55447ceecf5864d69fcc1c1ae771fd2b92ccd5"

      def install
        bin.install "tfren"
      end
    end
  end

  test do
    assert shell_output("#{bin}/tfren version")
  end
end
