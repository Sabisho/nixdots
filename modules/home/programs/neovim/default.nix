{inputs, ...}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
        ./core
    ./plugins
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = false;
    vimAlias = true;
    viAlias = true;
  };
}
