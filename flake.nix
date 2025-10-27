{
  description = "Klynt's NixOS config based on Niri";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs"; # ensures both use same nixpkgs version
    };

    # (Optional) Home Manager — uncomment when you start using it
    # home-manager = {
    #   url = "github:nix-community/home-manager";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = {
    self,
    nixpkgs,
    zen-browser,
    ...
  } @ inputs: let
    system = "x86_64-linux"; # CPU architecture
    username = "klynt"; # Main user
    hostname = "Nix-Acer"; # System hostname
  in {
    nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
      inherit system;

      specialArgs = {
        inherit username hostname inputs;
      };

      modules = [
        ./configuration.nix # your main system config

        # (Optional) Add home-manager here later:
        # home-manager.nixosModules.home-manager
        # {
        #   home-manager.useGlobalPkgs = true;
        #   home-manager.useUserPackages = true;
        #   home-manager.users.${username} = import ./home.nix;
        # }
      ];
    };
  };
}
