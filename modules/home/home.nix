{
  config,
  pkgs,
  lib,
  username,
  ...
}: {
  # Home Manager needs a bit of information about you and the paths it should manage
  home.username = username;
  # home.homeDirectory = "/home/$(username)";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

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
    ./programs/newsraft
    ./programs/swayimg
    ./theming
    # inputs.zen-browser.homeModules.beta
  ];

  # programs.zen-browser.enable = true;

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
