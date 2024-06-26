{
  pkgs,
  config,
  lib,
  ...
}: {
  options = {
    lualine.enable =
      lib.mkEnableOption "Enable Lualine";
  };
  config = lib.mkIf config.lualine.enable {
    plugins = {
      lualine.enable = true;
    };
  };
}
