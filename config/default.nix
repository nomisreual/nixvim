{
  imports = [
    ./options.nix
    ./keymaps.nix
    ./plugs
  ];

  colorschemes.tokyonight.enable = true;

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
}
