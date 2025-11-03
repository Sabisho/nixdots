{
  config,
  pkgs,
  lib,
  username,
  stateVersion,
  ...
}: {
  home.username = username;
  # home.homeDirectory = "/home/$(username)";
  home.stateVersion = stateVersion; # Please read the comment before changing.

  home.sessionVariables = {
    EDITOR = "hx";
    sudoedit = "hx";
  };

  # Home Manager can manage your shell configuration
  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  # Importing whole directory requires it having a default.nix file which imports other files in that directory.
  imports = [
    ./programs/git.nix
    ./programs/fish.nix
    ./programs/helix
    ./programs/waybar
    ./programs/niri
    ./programs/fastfetch
    ./programs/ghostty
    ./programs/mako
    ./programs/mpv
    ./programs/mpd
    ./programs/newsraft
    ./programs/swayimg
    ./theming
    # inputs.zen-browser.homeModules.beta
  ];

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
