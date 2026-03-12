{
  programs.nixvim = {
    plugins = {
      conform-nvim = {
        enable = true;
        autoInstall.enable = true;
        settings = {
          format_on_save = {timeout_ms = 500;};
          formatters_by_ft = {
            c = ["clang_format"];
            nix = ["alejandra"];
            rust = ["rustfmt"];
          };
        };
      };
    };
  };
}
