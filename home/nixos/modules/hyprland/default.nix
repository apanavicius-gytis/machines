{pkgs, inputs, hyprland, ...}:
{
  imports =[
    ./binds.nix
    ./plugins.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = [
        #maybe not the best idea to have monitors configed per user rather than machine
        "DP-1,2560x1440@155.00,0x0,1.0"
        "DP-2,1920x1080@144.00,2560x0,1.0"
      ];
      "$mod" = "SUPER";
      "exec-once" = [
        "waybar"
      ];
      "general" = {
        "layout" = "hy3";
      };
      "misc" = {
        "disable_hyprland_logo" = "true";
        "disable_splash_rendering" = true;
      };

    };
  };
}
