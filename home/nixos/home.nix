{ config, pkgs, hyprland, ... }:

{
  imports = [
    ../common.nix
    ./modules/hyprland
    ./modules/waybar
    ./modules/rofi
    ./modules/gaming
    ./modules/hyprpaper
  ];

  home = {
    username = "gytis";
    homeDirectory = "/home/gytis";
    stateVersion = "24.11";
    shell.enableZshIntegration = true;

    packages = [
      pkgs.firefox
      pkgs.steam
      pkgs.mpvpaper
      pkgs.discord
      pkgs.prismlauncher
      pkgs.hyprpaper
      pkgs.zsh
    ];

    pointerCursor = {
      gtk.enable = true;
      x11.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 16;
    };
  };

  programs.home-manager.enable = true;
}
