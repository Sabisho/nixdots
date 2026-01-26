{
  programs.nixvim = {
    plugins = {
      conform-nvim = {
        enable = true;
        settings = {
          format_on_save = {timeout_ms = 500;};
          formatters_by_ft = {
            bash = [
              "shellcheck"
              "shellharden"
              "shfmt"
            ];
            cpp = ["clang_format"];
            nix = ["alejandra"];
          };
        };
      };
    };
  };
}
