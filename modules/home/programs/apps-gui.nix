{pkgs, ...}: {
  home.packages = with pkgs; [
    brave
    file-roller
    gimp3
    gnome-disk-utility
    libreoffice-fresh
    mission-center
    obs-studio
    papers
    pavucontrol
    picard
    qbittorrent
    readest
    rnote
    songrec
    zed-editor
  ];
}
