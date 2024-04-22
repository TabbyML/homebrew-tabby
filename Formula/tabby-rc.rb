class TabbyRc < Formula
  desc "Tabby: AI Coding Assitatnt"
  homepage "https://github.com/TabbyML/tabby"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v0.10.0-rc.6/tabby_aarch64-apple-darwin"

  def install
    bin.install "tabby_aarch64-apple-darwin" => "tabby"
  end
end

