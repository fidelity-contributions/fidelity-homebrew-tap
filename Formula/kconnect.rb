# This file was generated by GoReleaser. DO NOT EDIT.
class Kconnect < Formula
  desc "The Kubernetes Connection Manager CLI"
  homepage "https://github.com/fidelity/kconnect"
  version "0.0.1-rc.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/fidelity/kconnect/releases/download/0.0.1-rc.2/kconnect_Darwin_x86_64.tar.gz"
    sha256 "06cbaba6a15ed4ccb9cba4dbaaaae183edf5306d37aea287ed3cb42cc05dfc79"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.0.1-rc.2/kconnect_Linux_x86_64.tar.gz"
      sha256 "a43f88c87ea5c96aa04fa8c4730504e30b4eda9961449938628501bfece6e4b9"
    end
  end
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "kconnect"
  end
end
