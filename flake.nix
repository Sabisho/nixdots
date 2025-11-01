{
  description = "Klynt's NixOS config based on Niri";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs"; # ensures both use same nixpkgs version
    };

    # (Optional) Home Manager — uncomment when you start using it
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    zen-browser,
    home-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux"; # CPU architecture
    username = "klynt"; # Main user
    hostname = "Nix-Acer"; # System hostname
    # Set your profile here - change this to "amd", "intel", or "nvidia"
    profile = "nvidia-prime";

    # Map profiles to their respective driver modules
    driverModules = {
      amd = ./modules/drivers/amd.nix;
      intel = ./modules/drivers/intel.nix;
      nvidia = ./modules/drivers/nvidia.nix;
      nvidia-prime = ./modules/drivers/nvidia-prime.nix;
    };
  in {
    nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
      inherit system;

      specialArgs = {
        inherit username hostname inputs profile;
      };

      modules = [
        ./configuration.nix # your main system config
        # Only import the selected driver module
        driverModules.${profile}

        # (Optional) Add home-manager here later:
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.${username} = import ./modules/home/home.nix;
          # Pass extra arguments to home.nix
          home-manager.extraSpecialArgs = {
            inherit username hostname;
          };
        }
      ];
    };
  };
}
