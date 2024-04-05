{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix
    ./plugins/completion/cmp.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/none-ls.nix
    ./plugins/lsp/conform.nix
    ./plugins/statusline/lualine.nix
    ./plugins/filetree/neotree.nix
    ./plugins/git/gitsigns.nix
    ./plugins/utilities/comment.nix
    ./plugins/utilities/indent-blankline.nix
    ./plugins/utilities/mini.nix
    ./plugins/utilities/tmux-navigator.nix
    ./plugins/utilities/whichkey.nix
    ./plugins/treesitter/treesitter.nix
    ./plugins/telescope/telescope.nix
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
