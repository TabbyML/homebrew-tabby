class Tabby < Formula
  desc "Tabby: AI Coding Assitatnt"
  homepage "https://github.com/TabbyML/tabby"

  on_macos do
    on_arm do
      head "https://github.com/TabbyML/tabby/releases/download/nightly/tabby_aarch64-apple-darwin"
    end
  end

  def install
    bin.install "tabby_aarch64-apple-darwin" => "tabby"
  end
end
