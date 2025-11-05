{
  inputs,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    distrobox
    gimp3
    gnome-disk-utility
    inputs.zen-browser.packages."${pkgs.stdenv.hostPlatform.system}".default
    meld
    mission-center
    picard
    songrec
    qbittorrent
    zed-editor
    libreoffice-fresh
    nautilus
    papers
  ];
}
