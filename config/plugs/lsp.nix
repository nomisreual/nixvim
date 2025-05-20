{
  plugins.lsp = {
    enable = true;
    servers = {
      bashls = {
        enable = true;
      };
      lua_ls = {
        enable = true;
        settings = {
          completion = {
            callSnippet = "Replace";
          };
        };
      };
      ts_ls = {
        enable = true;
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
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
    };
  };
}
