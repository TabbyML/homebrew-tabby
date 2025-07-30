class Tabby < Formula
  desc "Tabby: AI Coding Assistant"
  homepage "https://github.com/TabbyML/tabby"

  version "0.30.1"

  depends_on :macos
  depends_on arch: :arm

  url "https://github.com/TabbyML/tabby/releases/download/v#{version}/tabby_aarch64-apple-darwin.tar.gz"

  head "https://github.com/TabbyML/tabby/releases/download/nightly/tabby_aarch64-apple-darwin.tar.gz"

  def install
    bin.install "tabby" => "tabby"
    bin.install "llama-server" => "llama-server"
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
