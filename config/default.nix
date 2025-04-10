{
  pkgs,
  config,
  lib,
  ...
}: {
  imports = [
    ./options.nix
    ./keymaps.nix
    ./style.nix
    ./plugs
  ];

  globals = {
    mapleader = " ";
    maplocalleader = " ";
    have_nerd_font = true;
  };

  clipboard = {
    register = "unnamedplus";
    providers.xclip.enable = true;
    providers.wl-copy.enable = true;
  };

  ###############
  ##  Plugins  ##
  ###############

  # Git related:
  gitsigns.enable = true;

  # Completion:
  cmp.enable = true;

  # Databases:
  dadbod.enable = true;

  # Filetrees:
  neotree.enable = true;

  # LSP and Formatters:
  lsp.enable = true;
  conform.enable = true;
  fidget.enable = true;

  # Snippet engine:
  luasnip.enable = true;

  # UI
  lualine.enable = true;

  extraPackages = with pkgs; [fd ripgrep luajitPackages.jsregexp alejandra];
}
