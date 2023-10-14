# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kconnect < Formula
  desc "Kubernetes Connection Manager CLI"
  homepage "https://github.com/fidelity/kconnect"
  version "0.5.13"

  depends_on "Azure/kubelogin/kubelogin"
  depends_on "aws-iam-authenticator"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.13/kconnect_macos_amd64.tar.gz"
      sha256 "d7c9963a67ced131269cd3d5068a17a7fcd66f69b3f75c983ea4034a821d4c10"

      def install
        bin.install "kconnect"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.13/kconnect_macos_arm64.tar.gz"
      sha256 "d52a0264453e41a373270f954996689418379f4ddccd685e36b0d946ea5c469b"

      def install
        bin.install "kconnect"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.13/kconnect_linux_arm64.tar.gz"
      sha256 "19bc0ddc6629a68e6d400643298b3acfc12626b87c9066f1c8d117870545365f"

      def install
        bin.install "kconnect"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.13/kconnect_linux_amd64.tar.gz"
      sha256 "a6e659ef470e4786b904c9f89a1fb64890e47aa248eb88708d6f0d64026c063c"

      def install
        bin.install "kconnect"
      end
    end
  end
end
