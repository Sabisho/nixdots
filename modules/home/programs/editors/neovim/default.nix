{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./core
    ./plugins
  ];

  home.packages = with pkgs; [
    imagemagick # Required by Snacks.nvim
    trash-cli # Required by Snacks.nvim
  ];

  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
}
