{
  config,
  pkgs,
  inputs,
  username,
  hostname,
  ...
}: {
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
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  networking.hostName = hostname; # Define your hostname.
  # Enable networking
  networking.networkmanager.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.${username} = {
    isNormalUser = true;
    description = "Klynt";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.fish;
    home = "/home/${username}";
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  services.gvfs.enable = true;

  services.gnome.gnome-keyring.enable = true;

  # Virtualization
  programs.virt-manager.enable = true;

  virtualisation.libvirtd.enable = true;

  users.groups.libvirtd.members = ["${username}"];

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  networking.firewall.enable = true;

  system.stateVersion = "25.05"; # Did you read the comment?
}
