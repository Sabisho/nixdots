{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    banana-cursor
    papirus-icon-theme
    gnome-themes-extra
    adwaita-qt
  ];
}
