{
  lib,
  config,
  ...
}: {
  options = {
    neotree.enable =
      lib.mkEnableOption "Enable Neotree Filetree";
  };
  config = lib.mkIf config.neotree.enable {
    # Note: nvim-web-devicons is already enabled
    # Note: plenary-nvim is already enabled
    plugins.neo-tree = {
      enable = true;
      filesystem = {
        window = {
          mappings = {
            "\\" = "close_window";
          };
        };
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "\\";
        action = "<cmd>Neotree reveal<cr>";
        options = {
          silent = true;
          desc = "Toggle Neotree";
        };
      }
    ];
    # for previewing images
    plugins.image = {
      enable = true;
      settings = {
        backend = "kitty";
      };
    };
  };
}
