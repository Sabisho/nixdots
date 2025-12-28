{pkgs, ...}: {
  home.packages = with pkgs; [
    fd
    tealdeer
    dysk
    eza
    yazi
    bat
    ripgrep
    wget
    yt-dlp
    figlet
    tukai
    pastel
    onefetch
    charm-freeze
    glow
    caligula
  ];
}
