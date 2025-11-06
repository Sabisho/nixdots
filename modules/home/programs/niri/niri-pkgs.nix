{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    brightnessctl
    gpu-screen-recorder-gtk
    rofi
    hypridle
    hyprlock
    libnotify
    # mako
    polkit_gnome
    swww
    waypaper
    wl-clipboard
    xwayland-satellite
  ];
}
