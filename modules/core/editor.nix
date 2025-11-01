{pkgs, ...}: {
  programs.nano.enable = false;
  environment.systemPackages = with pkgs; [
    alejandra
    helix
    kdlfmt
    nixd
  ];
}
