{
  imports = [
    # ./stylix.nix
    # Stylix: Remove these for stylix theming.
    ./cursorTheme.nix
    ./gtk.nix
    ./qt.nix
  ];

  fonts.fontconfig.enable = true;
}
