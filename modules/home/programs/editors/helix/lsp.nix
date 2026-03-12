{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra
    nixd
    typst
    tinymist
    # rustc
    # rust-analyzer
    # rustfmt
    rustlings
  ];
}
