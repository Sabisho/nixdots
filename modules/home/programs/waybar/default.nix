{
  imports = [
    ./config.nix
    ./waybar-modules.nix
    # ./stylix-theme.nix
    # Stylix: Comment out style.nix when using stylix.
    ./gruvbox-theme.nix
  ];

  programs.waybar = {
    enable = true;
    systemd = {
      enable = true;
      target = "graphical-session.target";
    };
  };
}
