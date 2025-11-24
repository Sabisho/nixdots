{pkgs, ...}: {
  fonts.packages = with pkgs; [
    inter
    ibm-plex
    corefonts
    liberation_ttf
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    vista-fonts
  ];
  # Removes these to use stylix
  environment.systemPackages = with pkgs; [
    gnome-themes-extra
    bibata-cursors
    papirus-icon-theme
  ];
}
