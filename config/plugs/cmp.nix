{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      snippet.expand = ''
        function(args)
          local luasnip = require 'luasnip'
          luasnip.lsp_expand(args.body)
        end
      '';
      completion = {
        completeopt = "menu,menuone,noinsert";
      };
      sources = [
        {name = "nvim_lsp";}
        {name = "luasnip";}
        {name = "path";}
      ];
      mapping = {
        # Select the [n]ext item
        "<C-n>" = "cmp.mapping.select_next_item()";

        # Select the [p]revious item
        "<C-p>" = "cmp.mapping.select_prev_item()";

        # Scroll the documentation window [b]ack/ [f]orward
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";

        # Accept ([y]es) the completion
        "<C-y>" = "cmp.mapping.confirm { select = true }";

        # Manually trigger a completion
        "<C-Space>" = "cmp.mapping.complete {}";

        #  Think of <c-l> as moving to the right of your snippet expansion.
        #    So if you have a snippet that's like:
        #    function $name($args)
        #      $body
        #    end
        #
        #  <c-l> will move you to the right of each of the expansion locations.
        #  <c-h> is similar, except moving you backwards.
        "<C-l>" = ''
          cmp.mapping(function()
            local luasnip = require 'luasnip'
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { 'i', 's' })
        '';
        "<C-h>" = ''
          cmp.mapping(function()
            local luasnip = require 'luasnip'
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { 'i', 's' })
        '';
      };
    };
  };
}
