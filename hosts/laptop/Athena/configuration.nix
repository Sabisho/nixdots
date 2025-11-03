{stateVersion, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../../../modules/core/applications.nix
    ../../../modules/core/bluetooth.nix
    ../../../modules/core/boot.nix
    ../../../modules/core/editor.nix
    ../../../modules/core/fonts.nix
    ../../../modules/core/gaming.nix
    ../../../modules/core/greetd.nix
    ../../../modules/core/laptop-power-management.nix
    ../../../modules/core/locale.nix
    ../../../modules/core/networking.nix
    ../../../modules/core/nixgc.nix
    ../../../modules/core/pipewire.nix
    ../../../modules/core/razer.nix
    ../../../modules/core/terminal.nix
    ../../../modules/core/themes.nix
    ../../../modules/core/user-account.nix
    ../../../modules/core/virtualization.nix
    ../../../modules/core/window-manager.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  services = {
    fstrim.enable = true;
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
  };

  system.stateVersion = stateVersion; # Did you read the comment?
}
