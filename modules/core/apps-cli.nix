{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    fd
    dysk
    eza
    yazi
    bat
    ripgrep
    wget
    yt-dlp
    btop
    figlet
  ];
}
