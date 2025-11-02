{
  description = "Klynt's NixOS config based on Niri";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    ...
  }: let
    # ====================
    # Configuration Options
    # ====================
    machines = {
      # Laptops
      Athena = {
        system = "x86_64-linux";
        username = "klynt";
        profile = "nvidia-prime";
        type = "laptop";
      };

      # Desktops
      Nix-Desktop = {
        system = "x86_64-linux";
        username = "klynt";
        profile = "amd";
        type = "desktop";
      };

      Aeirith = {
        system = "x86_64-linux";
        username = "klynt";
        profile = "nvidia";
        type = "desktop";
      };
    };

    # ====================
    # System Builder
    # ====================
    mkSystem = hostname: cfg:
      nixpkgs.lib.nixosSystem {
        system = cfg.system;

        specialArgs = {
          inherit inputs hostname;
          inherit (cfg) username profile type;
        };

        modules = [
          ./hosts/${cfg.type}/${hostname}/configuration.nix
          ./modules/drivers/${cfg.profile}.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "hmbkp";
              users.${cfg.username} = import ./modules/home/home.nix;
              extraSpecialArgs = {
                inherit hostname;
                inherit (cfg) username type;
              };
            };
          }
        ];
      };

    # Helper to convert machines to nixosConfigurations
    mkConfigurations = machines:
      builtins.mapAttrs (hostname: cfg: mkSystem hostname cfg) machines;
  in {
    # System configurations
    nixosConfigurations = mkConfigurations machines;
  };
}
