{
  plugins = {
    alpha = {
      enable = true;
      iconsEnabled = true;
      layout = [
        {
          type = "padding";
          val = 2;
        }
        {
          opts = {
            hl = "Type";
            position = "center";
          };
          type = "text";
          val = [
            "                                                                         "
            "                                                                         "
            "                                                                         "
            "                                                                         "
            "                                                                       "
            "        ████ ██████           █████      ██                      "
            "       ███████████             █████                              "
            "       █████████ ███████████████████ ███   ███████████    "
            "      █████████  ███    █████████████ █████ ██████████████    "
            "     █████████ ██████████ █████████ █████ █████ ████ █████    "
            "   ███████████ ███    ███ █████████ █████ █████ ████ █████   "
            "  ██████  █████████████████████ ████ █████ █████ ████ ██████  "
            "                                                                         "
            "                                                                         "
            "                                                                         "
          ];
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "group";
          val = let
            mkButton = shortcut: cmd: val: hl: {
              type = "button";
              inherit val;
              opts = {
                inherit hl shortcut;
                keymap = [
                  "n"
                  shortcut
                  cmd
                  {}
                ];
                position = "center";
                cursor = 7;
                width = 40;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            };
          in [
            (
              mkButton
              "f"
              "<CMD>lua require('telescope.builtin').find_files({hidden = true})<CR>"
              "🔍 Find File"
              "Operator"
            )
            (
              mkButton
              "q"
              "<CMD>qa<CR>"
              "💣 Quit Neovim"
              "String"
            )
          ];
        }
      ];
    };
  };
}
