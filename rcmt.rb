# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rcmt < Formula
  desc "A rudimentary configuration management tool for Slack Challenge."
  homepage "https://Github.com/obay/rcmt"
  version "0.17.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "http://github.com/obay/rcmt/releases/download/v0.17.0/rcmt_0.17.0_Darwin_x86_64.tar.gz"
    sha256 "edc22fad762b03ae44651c5ccfac03e9bddc64c70d1d24248eab18925eeeb938"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "http://github.com/obay/rcmt/releases/download/v0.17.0/rcmt_0.17.0_Darwin_arm64.tar.gz"
    sha256 "b3f8c03aae63a086334fb1ee707971e09a6b15a21e6feb158d7394388e652b9b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "http://github.com/obay/rcmt/releases/download/v0.17.0/rcmt_0.17.0_Linux_x86_64.tar.gz"
    sha256 "b6f455aae149e37a94ec49bc6d6c85d70d427f42c49daf943289612352ef1125"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "http://github.com/obay/rcmt/releases/download/v0.17.0/rcmt_0.17.0_Linux_arm64.tar.gz"
    sha256 "c8c8b58409c74bcee2fc9f250cd96f610103c5a3409f6f94f0e919baae34bef1"
  end

  depends_on "go" => :build

  def install
    bin.install "rcmt"
  end

  test do
    assert shell_output("#{bin}/rcmt version")
  end
end
