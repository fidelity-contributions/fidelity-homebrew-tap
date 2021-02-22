# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kconnect < Formula
  desc "Kubernetes Connection Manager CLI"
  homepage "https://github.com/fidelity/kconnect"
  version "0.5.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fidelity/kconnect/releases/download/0.5.0/kconnect_macos_amd64.tar.gz"
    sha256 "c61e14bc476c3d2354a367f2bbf4a8696b4034fa97f1dd5c77e6d832c15ff2b1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fidelity/kconnect/releases/download/0.5.0/kconnect_linux_amd64.tar.gz"
    sha256 "0125a967eb094fd4e68856fb086bac751248a15ec570fe676fcf521d465b866e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/fidelity/kconnect/releases/download/0.5.0/kconnect_linux_arm.tar.gz"
    sha256 "912fce5d1d66a8920ce9aaa07c61ab16ee791751f175be6fba90a97bcf3fc832"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/fidelity/kconnect/releases/download/0.5.0/kconnect_linux_arm64.tar.gz"
    sha256 "92bc4b8abbb818da0356ab95da3b308021b087dcdb59c7105f3f5d1c25cc88fe"
  end

  depends_on "aws-iam-authenticator"
  depends_on "Azure/kubelogin/kubelogin"
  depends_on "kubernetes-cli"

  def install
    bin.install "kconnect"
  end
end
