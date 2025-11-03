{
  description = "Klynt's NixOS config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    username = "klynt";
    stateVersion = "24.05";
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

    # Helper function to create a system configuration
    mkSystem = {
      hostname,
      profile,
      type,
    }:
      nixpkgs.lib.nixosSystem {
        inherit system pkgs;
        specialArgs = {
          inherit inputs username stateVersion hostname profile type;
        };
        modules = [
          ./hosts/${type}/${hostname}/configuration.nix
          ./modules/drivers/${profile}.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "hmbkp";
              users.${username} = import ./modules/home/home.nix;
              extraSpecialArgs = {inherit username stateVersion hostname type;};
            };
          }
        ];
      };
  in {
    nixosConfigurations = {
      Athena = mkSystem {
        hostname = "Athena";
        profile = "nvidia-prime";
        type = "laptop";
      };

      Aeirith = mkSystem {
        hostname = "Aeirith";
        profile = "nvidia";
        type = "desktop";
      };
    };
  };
}
