{ config, pkgs, lib, ... }:

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
      pkgs.netbird-ui

      #k8s
      pkgs.kubectl
      pkgs.k9s
      pkgs.kubelogin
      pkgs.kubelogin-oidc
    ];

    activation.cleanOldAppAliases = lib.hm.dag.entryBefore [ "checkLinkTargets" ] ''
      rm -rf "$HOME/Applications/Home Manager Apps"
    '';

    activation.aliasApplications = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      app_folder="$HOME/Applications/Home Manager Aliases"
      rm -rf "$app_folder"
      mkdir -p "$app_folder"
      find "$newGenPath/home-path/Applications" -maxdepth 1 -name "*.app" 2>/dev/null | while read -r app; do
        real_app=$(readlink -f "$app")
        app_name=$(basename "$app")
        ${pkgs.mkalias}/bin/mkalias "$real_app" "$app_folder/$app_name"
      done
    '';

  };

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
}
