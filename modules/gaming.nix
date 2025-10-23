{pkgs, ...}: {
  programs.steam.enable = true;
  programs.gamemode.enable = true;
  programs.steam.gamescopeSession.enable = true;
  environment.systemPackages = with pkgs; [
    mangohud
    lutris
    protonplus
    # gamescope
  ];
}
