{pkgs, ...}: {
  programs = {
    rofi = {
      enable = true;
    };
  };
  services.cliphist = {
    enable = true;
  };
  home.packages = with pkgs; [
    rofi-emoji
  ];
  xdg.configFile.rofi = {
    source = ./configs;
    recursive = true;
  };
}
