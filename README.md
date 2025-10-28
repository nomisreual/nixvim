# My neovim configuration!

```
░███    ░██                            ░██                      ░██                
░████   ░██                                                                        
░██░██  ░██  ░███████  ░█████████████  ░██ ░███████  ░██    ░██ ░██░█████████████  
░██ ░██ ░██ ░██    ░██ ░██   ░██   ░██ ░██░██        ░██    ░██ ░██░██   ░██   ░██ 
░██  ░██░██ ░██    ░██ ░██   ░██   ░██ ░██ ░███████   ░██  ░██  ░██░██   ░██   ░██ 
░██   ░████ ░██    ░██ ░██   ░██   ░██ ░██       ░██   ░██░██   ░██░██   ░██   ░██ 
░██    ░███  ░███████  ░██   ░██   ░██ ░██ ░███████     ░███    ░██░██   ░██   ░██ 
```

## Configuration ✍️

Standalone [neovim](https://neovim.io/) configuration utilizing [nixvim](https://github.com/nix-community/nixvim). Feel free to try it out, modify it and make it your own.

### Current plugins (in no particular order):

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion plugin for neovim coded in Lua.
- [conform.nvim](https://github.com/stevearc/conform.nvim) - Lightweight yet powerful formatter plugin for Neovim.
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers.
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) - Indent guides for Neovim.
- [kiwi.nvim](https://github.com/serenevoid/kiwi.nvim) - A stripped down VimWiki for Neovim.
- [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) - Plugin for calling lazygit from within neovim.
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Quickstart configs for Nvim LSP.
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure neovim statusline plugin written in pure lua.
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine for Neovim written in Lua.
- [mini.nvim](https://github.com/nvim-mini/mini.nvim) - Library of 40+ independent Lua modules improving Neovim experience with minimal effort.
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - Neovim plugin to manage the file system and other tree like structures.
- [oil.nvim](https://github.com/stevearc/oil.nvim) - Neovim file explorer: edit your filesystem like a buffer.
- [noice.nvim](https://github.com/folke/noice.nvim) - 💥 Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
- [vim-sleuth](https://github.com/tpope/vim-sleuth) - Heuristically set buffer options.
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Find, Filter, Preview, Pick. All lua, all the time.
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Seamless navigation between tmux panes and vim splits.
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) - ✅ Highlight, list and search todo comments in your projects.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Nvim Treesitter configurations and abstraction layer.
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - Provides Nerd Font icons (glyphs) for use by neovim plugins.
- [which-key.nvim](https://github.com/folke/which-key.nvim) - 💥 Create key bindings that stick. WhichKey helps you remember your Neovim keymaps, by showing available keybindings in a popup as you type.

### Colorscheme

[Catppuccin Mocha](https://github.com/catppuccin/nvim)

## Usage 🚀

In order to use this configuration you need to have access to the nix package manager and have to have flakes enabled (which is available on any linux distribution, MacOS and Windows via WSL2).

To quickly try it out you can run the following:

```bash
nix run github:nomisreual/nomisvim
```

In case you clone this repository you can simply run `nix run .` inside of your copy. Hence, you can run this configuration wherever you have access to nix and quickly test new configurations.

You can also install this configuration which gives you the familiar `nvim` command to enter your neovim setup. In order for it to work you need to add this flake as an input to your system flake, like so:

```nix
{
inputs = {
  ...
  nomisvim.url = "github:nomisreual/nomisvim";
  ...
  };
}
```

You can then directly install it (example with home manager):

```nix
{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    inputs.nomisvim.packages.${system}.default
  ];
}
```

## Acknowledgements 🥳

I took a lot of inspiration from [elythhh's](https://github.com/elythh/nixvim) nixvim configuration.
