{
  programs = {
    git = {
      enable = true;
    };
    lazygit = {
      enable = true;
      enableFishIntegration = true;
    };
  };

  imports = [
    ./config.nix
  ];
}
