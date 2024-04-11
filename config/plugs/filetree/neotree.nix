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
    plugins.neo-tree.enable = true;
    # for previewing images
    plugins.image = {
      enable = true;
      backend = "kitty";
    };
  };
}
