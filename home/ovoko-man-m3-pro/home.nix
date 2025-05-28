{ config, pkgs, ... }:

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
      pkgs.raycast
      #k8s login
      pkgs.kubelogin
      pkgs.kubelogin-oidc
    ];

  };

  programs.home-manager.enable = true;
}
