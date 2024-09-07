class TabbyRc < Formula
  desc "Tabby: AI Coding Assistant"
  homepage "https://github.com/TabbyML/tabby"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v0.17.0-rc.3/tabby_aarch64-apple-darwin.zip"

  def install
    bin.install "tabby_aarch64-apple-darwin/tabby" => "tabby"
    bin.install "tabby_aarch64-apple-darwin/llama-server" => "llama-server"
  end
end

