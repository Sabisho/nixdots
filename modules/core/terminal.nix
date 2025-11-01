{pkgs, ...}: {
  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    ghostty
    fd
    dysk
    atuin
    zoxide
    eza
    yazi
    bat
    fastfetch
    git
    newsraft
    ripgrep
    starship
    wget
    yt-dlp
    btop
    figlet
  ];
}
