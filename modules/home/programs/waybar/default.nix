{
  imports = [
    ./config.nix
    ./waybar-modules.nix
    ./colors.nix
    ./style.nix
  ];

  programs.waybar = {
    enable = true;
  };
}
