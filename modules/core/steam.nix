{pkgs, ...}: {
  programs.steam = {
    enable = true;
    extraPackages = with pkgs; [
      bibata-cursors
    ];
  };
}
