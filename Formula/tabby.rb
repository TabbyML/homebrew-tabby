class Tabby < Formula
  desc "Tabby: AI Coding Assistant"
  homepage "https://github.com/TabbyML/tabby"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v0.16.1/tabby_aarch64-apple-darwin.zip"

  head "https://github.com/TabbyML/tabby/releases/download/nightly/tabby_aarch64-apple-darwin.zip"

  def install
    bin.install "tabby_aarch64-apple-darwin/tabby" => "tabby"
    bin.install "tabby_aarch64-apple-darwin/llama-server" => "llama-server"
  end

  def tabby_log_path
    var/"log/#{name}.log"
  end

  def caveats
  <<~EOS
    Please note tabby expects to read its configuration file from
    #{Dir.home}/.tabby/config.toml
  
    For more information see https://tabby.tabbyml.com/docs/administration/model/

    For a list of the available models see https://tabby.tabbyml.com/docs/models/
  EOS
  end

  service do
    run [opt_bin/"tabby", "serve", "--device", "metal"]
    keep_alive true
    log_path f.tabby_log_path
    error_log_path f.tabby_log_path
    working_dir HOMEBREW_PREFIX
  end
end
