{
  lib,
  config,
  ...
}: {
  options = {
    cmp.enable =
      lib.mkEnableOption "Enable CMP";
  };
  config = lib.mkIf config.cmp.enable {
    plugins = {
      cmp = {
        enable = true;
        settings = {
          autoEnableSources = true;
          performance = {
            debounce = 60;
            fetchingTimeout = 200;
            maxViewEntries = 30;
          };
          snippet.expand = "luasnip";
          sources = [
            {name = "nvim_lsp";}
            {name = "emoji";}
            {name = "buffer";}
            {name = "luasnip";}
            {name = "path";}
          ];
          window = {
            completion = {border = "rounded";};
            documentation = {border = "rounded";};
          };
          mapping = {
            # Select the [n]ext item:
            "<C-n>" = "cmp.mapping.select_next_item()";
            # Select the [p]revious item:
            "<C-p>" = "cmp.mapping.select_prev_item()";
            # Accept ([y]es) the completion:
            "<C-y>" = "cmp.mapping.confirm {select = true}";
            # Manually trigger completion from nvim-cmp:
            "<C-Space>" = "cmp.mapping.complete()";
          };
        };
      };
      # Enable auto-complete sources:
      cmp-nvim-lsp.enable = true; # LSP
      cmp-buffer.enable = true; # Current Buffer
      cmp_luasnip.enable = true; # Snippets
      cmp-path.enable = true; # File system paths
    };
  };
}
