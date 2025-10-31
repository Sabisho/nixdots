{pkgs, ...}: {
  # programs.hyprland.enable = true;
  programs.niri.enable = true;
  services.displayManager.gdm.enable = true;
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
  };
  environment.systemPackages = with pkgs; [
    apple-cursor
    brightnessctl
    fuzzel
    gnome-themes-extra
    gpu-screen-recorder-gtk
    hypridle
    hyprlock
    kdePackages.qt6ct
    libnotify
    libsForQt5.qt5ct
    mako
    nwg-look
    papirus-icon-theme
    polkit_gnome
    swayimg
    swww
    waybar
    waypaper
    wl-clipboard
    xwayland-satellite
  ];
}
