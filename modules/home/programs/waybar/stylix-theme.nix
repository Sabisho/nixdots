{lib, ...}: {
  programs.waybar.style = lib.mkAfter ''
    * {
      font-family: "JetBrainsMono Nerd Font Propo" !important;
    }
  '';
}
