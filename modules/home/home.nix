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

  # Packages that should be installed to the user profile
  home.packages = with pkgs; [
    # Development tools
    git
    vim

    # CLI utilities
    htop
    tree
    wget

    # Add your packages here
  ];

  # Home Manager can manage your shell configuration
  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  # Git configuration
  programs.git = {
    enable = true;
    settings = {
      user.name = "helixoid";
      user.email = "ayushrajmth91@gmail.com";
    };
  };

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
