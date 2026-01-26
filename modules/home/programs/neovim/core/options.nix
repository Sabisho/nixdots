{
  programs.nixvim = {
    globals.mapleader = " ";

    opts = {
      # Line Numbering Settings
      number = true;
      relativenumber = true;
      cursorline = true;
      signcolumn = "yes";

      # Tab Settings
      tabstop = 2;
      expandtab = true;
      shiftwidth = 2;
      shiftround = true;
      smartindent = true;

      # Search Settings
      ignorecase = true;
      smartcase = true;
      incsearch = true;
      hlsearch = true;

      # QOL Settings
      showmode = false;
      clipboard = "unnamedplus";
      timeoutlen = 300;
      splitbelow = true;
      splitright = true;
      termguicolors = true;

      # Buffer Settings
      undofile = true;
      list = true;
      listchars = {
        tab = "» ";
        trail = "·";
        nbsp = "␣";
      };
      inccommand = "split";
      scrolloff = 10;
      foldmethod = "indent";
      foldlevel = 99;
      foldenable = false;
    };
  };
}
