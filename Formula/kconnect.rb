# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kconnect < Formula
  desc "Kubernetes Connection Manager CLI"
  homepage "https://github.com/fidelity/kconnect"
  version "0.5.16"

  depends_on "Azure/kubelogin/kubelogin"
  depends_on "aws-iam-authenticator"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.16/kconnect_macos_amd64.tar.gz"
      sha256 "31c6ba208a2f568de551d1792278db8daf0e5be50ba6090ca6421ec6ca3cca93"

      def install
        bin.install "kconnect"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.16/kconnect_macos_arm64.tar.gz"
      sha256 "3a570a9bfe05502af85cafd5c3346e8d7486af95c3da89b88ff562294a74b343"

      def install
        bin.install "kconnect"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.16/kconnect_linux_amd64.tar.gz"
      sha256 "70d6671e339ac2e7cfc57c8359f482b4188d655d899d0449afeee7e8a5afd1a2"

      def install
        bin.install "kconnect"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.16/kconnect_linux_arm64.tar.gz"
      sha256 "c1b84c68cf10f739984ff105708ad08cab59b516e727256eea2d1fc9dbdbf81b"

      def install
        bin.install "kconnect"
      end
    end
  end
end
