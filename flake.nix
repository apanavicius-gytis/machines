{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nvim.url = "github:apanavicius-gytis/nvim";

    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";

    minimal-tmux = {
        url = "github:niksingh710/minimal-tmux-status";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ nixpkgs, home-manager, nvim, hyprland, minimal-tmux, ... }:
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
    };
}
