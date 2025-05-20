{
  pkgs,
  lib,
  ...
}: {
  plugins.conform-nvim = {
    # Formatting.
    enable = true;
    settings = {
      formatters_by_ft = {
        bash = ["shellcheck" "shellharden" "shfmt"];
        sh = ["shellcheck" "shellharden" "shfmt"];
        python = ["ruff"];
        lua = ["stylua"];
        nix = ["alejandra"];
        javascript = ["prettierd"];
        typescript = ["prettierd"];
      };
      notify_on_error = true;
      format_on_save =
        /*
        lua
        */
        ''
          function(bufnr)
          local disable_filetypes = { c = true, cpp = true }
          local lsp_format_opt
          if disable_filetypes[vim.bo[bufnr].filetype] then
            lsp_format_opt = 'never'
          else
            lsp_format_opt = 'fallback'
          end
          return {
            timeout_ms = 500,
            lsp_format = lsp_format_opt,
          }
          end
        '';
      formatters = {
        shellcheck = {
          command = lib.getExe pkgs.shellcheck;
        };
        shellharden = {
          command = lib.getExe pkgs.shellharden;
        };
        shfmt = {
          command = lib.getExe pkgs.shfmt;
          args = "-i=2";
        };
        ruff = {
          command = lib.getExe pkgs.ruff;
          args = "format";
          stdin = false;
        };
        lua = {
          command = lib.getExe pkgs.stylua;
        };
        nix = {
          command = lib.getExe pkgs.alejandra;
        };
        prettierd = {
          command = lib.getExe pkgs.prettierd;
        };
      };
    };
  };
}
