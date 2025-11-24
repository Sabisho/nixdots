{
  inputs,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    distrobox
    easyeffects
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
    libreoffice-fresh
    nautilus
    papers
    pavucontrol
  ];
  programs.localsend.enable = true;
}
