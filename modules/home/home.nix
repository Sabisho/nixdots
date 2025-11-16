{
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

  xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
      download = "$HOME/Downloads";
      documents = "$HOME/Documents";
      music = "$HOME/Music";
      pictures = "$HOME/Pictures";
      videos = "$HOME/Videos";
      desktop = "$HOME/Desktop";
      publicShare = "$HOME/Public";
      templates = "$HOME/Templates";
    };
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
    ./programs/hypr
    ./programs/fastfetch
    ./programs/ghostty
    ./programs/mako
    ./programs/mpv
    ./programs/mpd
    ./programs/newsraft
    ./programs/swayimg
    ./programs/rofi
    ./theming
  ];

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
