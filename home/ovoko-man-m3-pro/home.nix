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
      pkgs.jetbrains.goland
      pkgs.bruno

      #k8s
      pkgs.kubectl
      pkgs.k9s
      pkgs.kubelogin
      pkgs.kubelogin-oidc
    ];

  };

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
}
