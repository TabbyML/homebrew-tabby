class TabbyRc < Formula
  desc "Tabby: AI Coding Assistant"
  homepage "https://github.com/TabbyML/tabby"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v0.23.0-rc.1/tabby_aarch64-apple-darwin.tar.gz"

  def install
    bin.install "tabby" => "tabby"
    bin.install "llama-server" => "llama-server"
  end
end

