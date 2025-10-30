{pkgs, ...}:{
  programs.nano.enable = false;
   environment.systemPackages = with pkgs; [
    helix
    alejandra
    nixd
  ];
}
