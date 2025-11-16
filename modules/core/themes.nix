{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    bibata-cursors
    banana-cursor
    papirus-icon-theme
    gnome-themes-extra
    fluent-gtk-theme
    fluent-icon-theme
    adwaita-qt
  ];
}
