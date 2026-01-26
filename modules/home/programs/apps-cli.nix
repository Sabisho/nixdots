{pkgs, ...}: {
  home.packages = with pkgs; [
    bat
    caligula
    charm-freeze
    cmd-wrapped
    dysk
    eza
    fd
    figlet
    glow
    onefetch
    pastel
    ripgrep
    tealdeer
    tukai
    wget
    yazi
    yt-dlp
  ];
}
