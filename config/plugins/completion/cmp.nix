{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      snippet.expand = ''
      function(args)
        require('luasnip').lsp_expand(args.body)
      end
      '';
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
        { name = "luasnip"; }
      ];
      window = {
        completion = {
	  border = "rounded";
        };
	documentation = {
	  border = "rounded";
	};
      };	
      mapping = {
        # Select the [n]ext item:
        "<C-n>" = "cmp.mapping.select_next_item()";
        # Select the [p]revious item:
        "<C-p>" = "cmp.mapping.select_prev_item()";
        # Accept ([y]es) the completion:
        "<C-y>" = "cmp.mapping.confirm {select = true}";
	# Manually trigger completion from nvim-cmp:
	"<C-Space>" = "cmp.mapping.complete {}";
      };
    };
  };

  plugins.luasnip.enable = true;
}
