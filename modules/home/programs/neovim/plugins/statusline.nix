{
  programs.nixvim = {
    plugins = {
      lualine = {
        enable = true;
settings = {
    options = {
      section_separators = {
  left = "";
  right = "";
};

      };
  };
      };
    };
  };
}
