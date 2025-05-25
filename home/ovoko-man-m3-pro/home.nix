{ config, pkgs, hyprland, ... }:

{
  imports = [
    ../common.nix
  ];

  home = {
    username = "gytis.apanavicius";
    homeDirectory = "/Users/gytis.apanavicius";
    stateVersion = "24.11";
       shell.enableZshIntegration = true;

    packages = [
    ];

  };

  programs.home-manager.enable = true;
}
