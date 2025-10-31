{
  inputs,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    apple-cursor
    distrobox
    gimp3
    gnome-disk-utility
    inputs.zen-browser.packages."${system}".default
    meld
    mission-center
    mpv
    picard
    qbittorrent
    rewaita
    zed-editor
    libreoffice-fresh
  ];
}
