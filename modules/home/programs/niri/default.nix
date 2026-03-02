{pkgs, ...}: {
  imports = [
    ./config.nix
  ];
  home.packages = with pkgs; [
    brightnessctl
    libnotify
    polkit_gnome
    wl-clipboard
    wlsunset
    xwayland-satellite
  ];
}
