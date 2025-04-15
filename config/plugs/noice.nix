{
  plugins.noice = {
    # requires nvim-notify or snacks
    enable = true;
    settings = {
      routes = [
        {
          view = "notify";
          filter = {
            event = "msg_showmode";
          };
        }
      ];
      lsp = {
        overrides = {
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
          "cmp.entry.get_documentation" = true; # req. nvim-cmp
        };
      };
    };
  };
}
