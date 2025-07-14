{ config, pkgs, ... }:

{
  imports = [
    ../common.nix
    ./aerospace
  ];

  home = {
    username = "gytis.apanavicius";
    homeDirectory = "/Users/gytis.apanavicius";
    stateVersion = "24.11";
    shell.enableZshIntegration = true;

    packages = [
      pkgs.slack

      #k8s
      pkgs.k9s
      pkgs.kubelogin
      pkgs.kubelogin-oidc
    ];

  };

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
}
