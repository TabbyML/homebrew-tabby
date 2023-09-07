class Tabby < Formula
  desc "Tabby: AI Coding Assitatnt"
  homepage "https://github.com/TabbyML/tabby"

  on_macos do
    on_arm do
      url "https://github.com/TabbyML/tabby/releases/download/v0.0.1/tabby_aarch64-apple-darwin"
      sha256 "28d97ae6655d1fe6262321e19bca554643cef1ac6fafaab32a82227a933de42d"
      version "0.0.1"
    end
  end

  def install
    bin.install "tabby_aarch64-apple-darwin" => "tabby"
  end
end
