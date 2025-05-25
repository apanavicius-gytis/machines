{
  imports = [
    ./styles.nix
  ];

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        modules-left = [ "hyprland/workspaces"];
        "modules-right" = ["cpu" "memory" "clock"];
        "hyprland/workspaces" = {
          disable-scroll = true;
          all-outputs = false;
        };

        "memory" = {
          "format" = "RAM {percentage}%";
        };

        "cpu" = {
          "format" = "CPU {usage}%";
        };

        "clock" = {
          "format" = "{:%m-%d %H:%M}";
          "tooltip" = "{:%m-%d %H:%M}";
          "interval" = 60;
        };
      };
    };
  };
}
