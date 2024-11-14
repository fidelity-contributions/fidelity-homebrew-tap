# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kconnect < Formula
  desc "Kubernetes Connection Manager CLI"
  homepage "https://github.com/fidelity/kconnect"
  version "0.5.18"

  depends_on "Azure/kubelogin/kubelogin"
  depends_on "aws-iam-authenticator"
  depends_on "kubernetes-cli"

  on_macos do
    on_intel do
      url "https://github.com/fidelity/kconnect/releases/download/0.5.18/kconnect_macos_amd64.tar.gz"
      sha256 "9e52800b2a710c7ccd595e16e8c824fb7405ec94ceca19146a6d52d7429ebae1"

      def install
        bin.install "kconnect"
      end
    end
    on_arm do
      url "https://github.com/fidelity/kconnect/releases/download/0.5.18/kconnect_macos_arm64.tar.gz"
      sha256 "63da70f7bf4f3f5eccddc4d8c7afbdafdebd68adccb6398b5c8e922dcc5735eb"

      def install
        bin.install "kconnect"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fidelity/kconnect/releases/download/0.5.18/kconnect_linux_amd64.tar.gz"
        sha256 "7134782999af2dd070d190fbac09bd300a2af9229e4b766ae5cc02b429d49120"

        def install
          bin.install "kconnect"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fidelity/kconnect/releases/download/0.5.18/kconnect_linux_arm64.tar.gz"
        sha256 "d552fc5c4c521fdd8161d6fe7138980307f5c8219a2e40bda95f045cd6fa1d92"

        def install
          bin.install "kconnect"
        end
      end
    end
  end
end
