{
  username,
  stateVersion,
  ...
}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];

  nixpkgs.config.allowUnfree = true;

  programs.nh = {
    enable = true;
    flake = "/home/${username}/nixdots";
    clean = {
      enable = true;
      dates = "weekly";
      extraArgs = "--keep-since 3d --optimise";
    };
  };

  zramSwap = {
    enable = true;
    priority = 100;
    algorithm = "zstd";
    memoryPercent = 50;
  };

  services = {
    fstrim.enable = true;
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    fwupd.enable = true;
  };

  system.stateVersion = stateVersion; # Did you read the comment?
}
