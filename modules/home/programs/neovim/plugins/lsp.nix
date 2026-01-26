{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          nixd.enable = true;
          # rust_analyzer.enable = true;
          ty.enable = true;
        };
      };
    };
  };
}
