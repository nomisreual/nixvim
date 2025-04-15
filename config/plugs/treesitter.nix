{
  plugins.treesitter = {
    enable = true;
    settings = {
      auto_install = false;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = ["ruby"];
      };
      indent = {
        enable = true;
        disable = ["ruby"];
      };
    };
  };
}
