# My neovim configuration!

              ████   ██████            █████        ██
              ██████  █████             █████
             ███████  ██   ████████ ███  █████ ███ ███   ███ ████ ████
            █  ████████    ███      █████  ████████ █████ █████ ████ █████
           ███  ██████   ████████  ██   ██  ███████ █████ █████ ████ █████
         ██████  █████   ███      ███   ███  ██████ █████ █████ ████ █████
        ██████    ███  █████████  █████████   ████ █████ █████ ████ ██████

## Configuration ✍️

Standalone [neovim](https://neovim.io/) configuration utilizing [nixvim](https://github.com/nix-community/nixvim). Feel free to try it out, modify it and make it your own.

### Current plugins:

## Usage 🚀

In order to use this configuration you need to have access to the nix package manager and have to have flakes enabled (which is available on any linux distribution and even on MacOS).

To quickly try it out you can run the following:

```bash
nix run github:nomisreual/nixvim
```

In case you clone this repository you can simply run `nix run .` inside of your copy. Hence, you can run this configuration wherever you have access to nix and quickly test new configurations.

You can also install this configuration which gives you the familiar `nvim` command to enter your neovim setup. In order for it to work you need to add this flake as an input to your system flake, like so:

```bash
{
inputs = {
  ...
  nixvim.url = "github:nomisreual/nixvim";
  ...
  };
}
```

You can then directly install it (example with home manager):

```bash
{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    inputs.nixvim.packages.${system}.default
    ripgrep # recommended for the fuzzy finder telescope
    sleek # my current sql formatter of choice
  ];
}
```

## Acknowledgements 🥳

I took a lot of inspiration from [elythhh's](https://github.com/elythh/nixvim) nixvim configuration.
