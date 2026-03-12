{inputs, ...}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./core
    ./plugins
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    viAlias = true;
  };
}
