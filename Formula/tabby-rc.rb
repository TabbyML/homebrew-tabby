class TabbyRc < Formula
  desc "Tabby: AI Coding Assitatnt"
  homepage "https://github.com/TabbyML/tabby"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v0.13.0-rc.2/tabby_aarch64-apple-darwin.zip"

  def install
    bin.install "tabby_aarch64-apple-darwin/tabby" => "tabby"
    bin.install "tabby_aarch64-apple-darwin/llama-server" => "llama-server"
  end
end

