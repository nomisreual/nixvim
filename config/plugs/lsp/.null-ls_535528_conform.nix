{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    conform.enable =
      lib.mkEnableOption "Enable Conform";
  };
  config = lib.mkIf config.conform.enable {
    plugins.conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          bash = ["shellcheck" "shellharden" "shfmt"];
          python = ["ruff"];
          lua = ["stylua"];
          nix = ["alejandra"];
        };
        notify_on_error = true;
        format_on_save = {
          lsp_format = "fallback";
          timeout_ms = 500;
        };
        formatters = {
          shellcheck = {
            command = lib.getExe pkgs.shellcheck;
          };
          shellharden = {
            command = lib.getExe pkgs.shellharden;
          };
          shfmt = {
            command = lib.getExe pkgs.shfmt;
          };
          ruff = {
            command = lib.getExe pkgs.ruff;
            args = "format";
          };
          lua = {
            command = lib.getExe pkgs.stylua;
          };
          nix = {
            command = lib.getExe pkgs.alejandra;
          };
        };
      };
    };
  };
}
