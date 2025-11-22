{
  username,
  stateVersion,
  ...
}: {
  home.username = username;
  home.stateVersion = stateVersion; # Please read the comment before changing.

  home.sessionVariables = {
    EDITOR = "hx";
    sudoedit = "hx";
  };

  # Importing whole directory requires it having a default.nix file which imports other files in that directory.
  imports = [
    ./programs
    ./theming
  ];

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
