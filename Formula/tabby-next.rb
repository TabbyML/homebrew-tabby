class TabbyRc < Formula
  desc "Tabby: AI Coding Assistant"
  homepage "https://github.com/TabbyML/tabby"

  version "alpha"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/next-#{version}/tabby_aarch64-apple-darwin.tar.gz"

  def install
    bin.install "tabby" => "tabby"
    bin.install "llama-server" => "llama-server"
  end
end

