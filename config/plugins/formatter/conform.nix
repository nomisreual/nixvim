{
  plugins.conform-nvim = {
    enable = true;
    notifyOnError = true;
    formatOnSave = {
      timeoutMs = 500;
      lspFallback = true;
    };
    formattersByFt = {
      python = [ "isort" "black" ];
      lua = [ "stylua" ];
      html = [ "prettierd" ];
      javascript = [ "prettierd" ];
      sql = [ "sleek" ];
      "*" = [ "codespell" ];
    };
  };
}
