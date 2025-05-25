{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nvim.url = "github:apanavicius-gytis/nvim";

    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";

    minimal-tmux = {
        url = "github:niksingh710/minimal-tmux-status";
        inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/nix-darwin-25.05";
      inputs.nixpgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ nixpkgs, home-manager, nvim, hyprland, minimal-tmux, nix-darwin, ... }:
    {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/nixos/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.gytis = import ./home/nixos/home.nix;
              home-manager.extraSpecialArgs = {
	              inherit inputs nvim minimal-tmux;
	            };
            }
          ];
          specialArgs = {
            inherit inputs nvim minimal-tmux;
          };
        };
      };

      darwinConfigurations."O-L7M2GF23" = nix-darwin.lib.darwinSystem {
          modules = [
            ./hosts/ovoko-mac-m3-pro/configuration.nix
            home-manager.darwinModules.home-manager
            {
              home-manager = {
                users."gytis.apanavicius" = import ./home/ovoko-man-m3-pro/home.nix;
                extraSpecialArgs = {
	                inherit inputs nvim minimal-tmux;
	              };
              };
              users.users."gytis.apanavicius".home = "/Users/gytis.apanavicius";
            }
          ];
      };
    };
}
