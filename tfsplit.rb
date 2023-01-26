# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfsplit < Formula
  desc "A tool to rename Terraform files accodrind to the resource type and name."
  homepage "https://github.com/obay/tfsplit"
  version "0.0.1"

  depends_on "go" => :build

  on_macos do
    if Hardware::CPU.arm?
      url "http://github.com/obay/tfsplit/releases/download/v0.0.1/tfsplit_0.0.1_darwin_arm64.tar.gz"
      sha256 "6809e089d6864e33168c5e1c0e00ff14e03ea67598c9c806824d5da96ae63175"

      def install
        bin.install "tfsplit"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/obay/tfsplit/releases/download/v0.0.1/tfsplit_0.0.1_darwin_amd64.tar.gz"
      sha256 "939cf2bd63569bd7c5f3f1493eec5b7facdae208788f13728ff3cdda4692f0bf"

      def install
        bin.install "tfsplit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/obay/tfsplit/releases/download/v0.0.1/tfsplit_0.0.1_linux_arm64.tar.gz"
      sha256 "69d1e33952292ddd32b43a0eaac1ae5ce206b3c120c04a6eea8ba0c891869c1c"

      def install
        bin.install "tfsplit"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/obay/tfsplit/releases/download/v0.0.1/tfsplit_0.0.1_linux_amd64.tar.gz"
      sha256 "72714394727c9675182c376f905c3c9ed212c0b43387a7c73220ba304f78f351"

      def install
        bin.install "tfsplit"
      end
    end
  end

  test do
    assert shell_output("#{bin}/tfsplit version")
  end
end