{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix
    ./plugins/completion/cmp.nix
    ./plugins/lsp
    # ./plugins/lsp/fidget.nix
    # ./plugins/lsp/lsp.nix
    # ./plugins/lsp/none-ls.nix
    # ./plugins/lsp/conform.nix
    ./plugins/statusline/lualine.nix
    ./plugins/filetree/neotree.nix
    ./plugins/git/gitsigns.nix
    ./plugins/treesitter/treesitter.nix
    ./plugins/telescope/telescope.nix
    ./plugins/ui
    ./plugins/utilities
    ./plugins/database
    ./plugins/snippets
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
}
