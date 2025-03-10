class TabbyRc < Formula
  desc "Tabby: AI Coding Assistant"
  homepage "https://github.com/TabbyML/tabby"

  version "0.26.0-rc.1"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v#{version}/tabby_aarch64-apple-darwin.tar.gz"

  def install
    bin.install "tabby" => "tabby"
    bin.install "llama-server" => "llama-server"
  end
end

