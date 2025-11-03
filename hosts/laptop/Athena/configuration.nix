{stateVersion, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../../../modules/core
    ../../../modules/gaming
    ./laptop-power-management.nix
    ../../../modules/drivers/open-razer.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  services = {
    fstrim.enable = true;
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
  };

  system.stateVersion = stateVersion; # Did you read the comment?
}
