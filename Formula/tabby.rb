class Tabby < Formula
  desc "Tabby: AI Coding Assitatnt"
  homepage "https://github.com/TabbyML/tabby"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v0.5.5/tabby_aarch64-apple-darwin"
  sha256 "48e3f76bee7a5baed914e48a14f50256b2d08d8ea59773b26338250ab212468c"

  head "https://github.com/TabbyML/tabby/releases/download/nightly/tabby_aarch64-apple-darwin"

  def install
    bin.install "tabby_aarch64-apple-darwin" => "tabby"
  end
end

