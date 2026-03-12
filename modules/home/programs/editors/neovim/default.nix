{inputs, ...}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./core
    ./plugins
  ];

  programs.nixvim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
  };
}
