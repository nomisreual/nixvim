{
  autoGroups = {
    highlight-yank = {
      clear = true;
    };
  };

  autoCmd = [
    {
      event = ["TextYankPost"];
      callback = {
        __raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      };
      desc = "Highlight when yanking text";
      group = "highlight-yank";
    }
  ];
}
