{
  plugins.neo-tree = {
    enable = true;
    settings = {
      filesystem.window.mappings = {
        "\\" = "close_window";
      };
    };
  };
  plugins.oil.enable = true;
  keymaps = [
    {
      # action = ":Neotree reveal<CR>";
      action = ":Neotree <CR>";
      key = "\\";
      options = {
        silent = true;
        desc = "NeoTree reveal";
      };
    }
  ];
}
