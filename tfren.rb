# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfren < Formula
  desc "A tool to rename Terraform files accodrind to the resource type and name."
  homepage "https://github.com/obay/tfren"
  version "0.1.8"

  depends_on "go" => :build

  on_macos do
    if Hardware::CPU.arm?
      url "http://github.com/obay/tfren/releases/download/v0.1.8/tfren_0.1.8_Darwin_arm64.tar.gz"
      sha256 "5e57d716759fe6c36a08888fd5a0a738b67632b2769ddd53c02f7648e18c667f"

      def install
        bin.install "tfren"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/obay/tfren/releases/download/v0.1.8/tfren_0.1.8_Darwin_x86_64.tar.gz"
      sha256 "07bfa870fa4ad858dad686d066c2e03dcb61ca16b2e2211020ff8cc6e618930e"

      def install
        bin.install "tfren"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://github.com/obay/tfren/releases/download/v0.1.8/tfren_0.1.8_Linux_x86_64.tar.gz"
      sha256 "d54f2fd4b840cb122d9699ff03fae2c5cc6aba42f59cf5dcd98b8eb1c3233be0"

      def install
        bin.install "tfren"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/obay/tfren/releases/download/v0.1.8/tfren_0.1.8_Linux_arm64.tar.gz"
      sha256 "1a69a0dce6fcd96539505543e771c8018228200e98ef8168ebbde95fbc629769"

      def install
        bin.install "tfren"
      end
    end
  end

  test do
    assert shell_output("#{bin}/tfren version")
  end
end
