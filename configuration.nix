{
  imports = [
    ./hardware-configuration.nix
    ./modules/applications.nix
    ./modules/bluetooth.nix
    ./modules/boot.nix
    ./modules/editor.nix
    ./modules/fonts.nix
    ./modules/gaming.nix
    ./modules/locale.nix
    ./modules/mpd.nix
    ./modules/nixgc.nix
    ./modules/nvidia.nix
    ./modules/pipewire.nix
    ./modules/razer.nix
    ./modules/terminal.nix
    ./modules/video-drivers.nix
    ./modules/window-manager.nix
    ./modules/virtualization.nix
    ./modules/firewall.nix
    ./modules/user-account.nix
    ./modules/networking.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Define a user account. Don't forget to set a password with ‘passwd’.

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  services.gvfs.enable = true;

  services.gnome.gnome-keyring.enable = true;

  system.stateVersion = "25.05"; # Did you read the comment?
}
