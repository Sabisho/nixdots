{
  imports = [
    ./config.nix
    ./waybar-modules.nix
    ./style.nix
  ];

  programs.waybar = {
    enable = true;
  };
}
