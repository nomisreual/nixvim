{
  plugins.lazygit = {
    enable = true;
  };
  keymaps = [
    # Clear highlights on search when pressing <Esc> in normal mode
    {
      key = "<leader>lg";
      action = "<cmd>LazyGit<CR>";
      mode = ["n"];
      options = {
        desc = "Open LazyGit";
      };
    }
  ];
}
