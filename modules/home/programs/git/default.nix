{
  programs = {
    git = {
      enable = true;
    };
    gitui = {
      enable = true;
    };
  };

  imports = [
    ./config.nix
  ];
}
