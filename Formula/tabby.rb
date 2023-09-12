class Tabby < Formula
  desc "Tabby: AI Coding Assitatnt"
  homepage "https://github.com/TabbyML/tabby"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v0.1.0/tabby_aarch64-apple-darwin"
  sha256 "085ef069341f3ebf2018645f0c259cc7162ef220b8e85eb786b37dce731f313c"

  head "https://github.com/TabbyML/tabby/releases/download/nightly/tabby_aarch64-apple-darwin"

  def install
    bin.install "tabby_aarch64-apple-darwin" => "tabby"
  end
end
