{
  username,
  stateVersion,
  ...
}: {
  home = {
    username = username;
    stateVersion = stateVersion; # Please read the comment before changing.
    sessionVariables = {
      EDITOR = "nvim";
      sudoedit = "nvim";
      VISUAL = "nvim";
      TERMINAL = "ghostty";
      MPD_HOST = "localhost";
    };
  };

  # Importing whole directory requires it having a default.nix file which imports other files in that directory.
  imports = [
    ./programs
    ./theming
  ];

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
