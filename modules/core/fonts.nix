{pkgs, ...}: {
  fonts.packages = with pkgs; [
    adwaita-fonts
    corefonts
    liberation_ttf
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    vista-fonts
  ];
}
