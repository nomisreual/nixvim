{
  plugins.kiwi = {
    enable = true;
    settings = {
      __unkeyed-1 = {
        name = "wiki";
        path = "wiki";
      };
    };
    luaConfig.post =
      /*
      lua
      */
      ''
        local kiwi = require("kiwi")
        vim.keymap.set('n', '<leader>ki', kiwi.open_wiki_index, {})
        vim.keymap.set('n', 'T', kiwi.todo.toggle, {})
      '';
  };
}
