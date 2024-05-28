class TabbyRc < Formula
  desc "Tabby: AI Coding Assitatnt"
  homepage "https://github.com/TabbyML/tabby"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v0.12.0-rc.0/tabby_aarch64-apple-darwin.zip"

  def install
    bin.install "tabby_aarch64-apple-darwin/tabby" => "tabby"
  end

  depends_on "llama.cpp"
end

