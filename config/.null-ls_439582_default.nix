{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix
    ./plugins/completion/cmp.nix
    ./plugins/lsp
    ./plugins/statusline/lualine.nix
    ./plugins/filetree/neotree.nix
    ./plugins/treesitter/treesitter.nix
    ./plugins/telescope/telescope.nix
    ./plugins/ui
    ./plugins/utilities
    ./plugins/database
    ./plugins/snippets
    ./plugins/git
  ];

  colorschemes.tokyonight.enable = true;
  gitsigns.enable = false;

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
}
