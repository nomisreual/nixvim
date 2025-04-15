{
  plugins.lsp = {
    enable = true;
    servers = {
      lua_ls = {
        enable = true;
        settings = {
          completion = {
            callSnippet = "Replace";
          };
        };
      };
      nixd = {
        enable = true;
        settings = {
          nixpkgs = {
            expr = "import <nixpkgs> { }";
          };
          formatting = {
            cmd = "alejandra";
          };
        };
      };
      pyright = {
        enable = true;
        settings = {
          pyright = {
            disableOranizeImports = true;
          };
          python = {
            analysis = {
              ignore = ["*"];
            };
          };
        };
      };
      ruff = {
        enable = true;
        onAttach = {
          function = ''
            client.server_capabilities.hoverProvider = false
          '';
        };
      };
    };
  };
}
