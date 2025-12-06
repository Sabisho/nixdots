{
  inputs,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    distrobox
    gimp3
    gnome-disk-utility
    brave
    inputs.zen-browser.packages."${pkgs.stdenv.hostPlatform.system}".default
    meld
    mission-center
    picard
    songrec
    qbittorrent
    zed-editor
    # libreoffice-fresh
    papers
    pavucontrol
    file-roller
  ];
  programs = {
    localsend.enable = true;
    # appimage.enable = true;
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };
  services.tumbler.enable = true;
}
