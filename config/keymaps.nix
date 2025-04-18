{
  keymaps = [
    # Clear highlights on search when pressing <Esc> in normal mode
    {
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
      mode = ["n"];
    }
    # Diagnostic keymaps:
    {
      key = "<leader>q";
      action = {
        __raw = "vim.diagnostic.setloclist";
      };
      mode = ["n"];
    }
    # Disable arrow keys in normal mode
    {
      key = "<left>";
      action = "<cmd>echo 'Use h to move!'<CR>";
      mode = ["n"];
    }
    {
      key = "<right>";
      action = "<cmd>echo 'Use l to move!'<CR>";
      mode = ["n"];
    }
    {
      key = "<up>";
      action = "<cmd>echo 'Use k to move!'<CR>";
      mode = ["n"];
    }
    {
      key = "<down>";
      action = "<cmd>echo 'Use j to move!'<CR>";
      mode = ["n"];
    }
  ];
}
# -- Keybinds to make split navigation easier.
# --  Use CTRL+<hjkl> to switch between windows
# --
# --  See `:help wincmd` for a list of all window commands
# vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
# vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
# vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
# vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

