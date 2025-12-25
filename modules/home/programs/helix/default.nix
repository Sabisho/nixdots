{pkgs, ...}: {
  imports = [
    ./config.nix
    ./languages.nix
  ];

  programs.helix = {
    enable = true;
  };
  home.packages = with pkgs; [
    alejandra
    nixd
    typst
    tinymist
    rustc
    rust-analyzer
    rustfmt
    rustlings
  ];
}
