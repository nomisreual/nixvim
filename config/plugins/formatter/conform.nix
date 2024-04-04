{
  plugins.conform-nvim = {
    enable = true;
    notifyOnError = true;
    formatOnSave = {
      timeoutMs = 500;
      lspFallback = true;
    };
    formatters = {
      "sleek" = {
        command = "sleek";
      };
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
