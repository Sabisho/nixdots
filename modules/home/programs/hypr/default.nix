{pkgs, ...}: {
  home.packages = with pkgs; [
    # grim
    # slurp
    # satty
  ];
  imports = [
    # ./hyprland.nix
    ./hyprlock.nix
  ];
}
