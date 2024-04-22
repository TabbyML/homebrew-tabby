class Tabby < Formula
  desc "Tabby: AI Coding Assitatnt"
  homepage "https://github.com/TabbyML/tabby"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v0.10.0/tabby_aarch64-apple-darwin"

  head "https://github.com/TabbyML/tabby/releases/download/nightly/tabby_aarch64-apple-darwin"

  def install
    bin.install "tabby_aarch64-apple-darwin" => "tabby"
  end

  def tabby_log_path
    var/"log/#{name}.log"
  end

  service do
    run [opt_bin/"tabby", "serve", "--device", "metal", "--model", "StarCoder-1B"]
    keep_alive true
    log_path f.tabby_log_path
    error_log_path f.tabby_log_path
    working_dir HOMEBREW_PREFIX
  end
end
