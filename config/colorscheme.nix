{
  pkgs,
  lib,
  ...
}: {
  # Catppuccin Mocha
  colorschemes = {
    catppuccin = {
      enable = true;
      settings.flavour = "mocha";
    };
  };
}
