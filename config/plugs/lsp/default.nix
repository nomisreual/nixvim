{lib, ...}: {
  imports = [./conform.nix ./fidget.nix ./lsp.nix];
  conform.enable =
    lib.mkDefault false;
  fidget.enable =
    lib.mkDefault false;
  lsp.enable =
    lib.mkDefault false;
}
