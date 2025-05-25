{pkgs, ... }:
{
  wayland.windowManager.hyprland.plugins =[
    pkgs.hyprlandPlugins.hy3
  ];

  wayland.windowManager.hyprland.settings = {
    "plugin" = {
      "hy3" = {
        "no_gaps_when_only" = "1";
        "tabs" = {
          "radius" = "0";
         	"border_width" = "1";
					"col.active" = "rgba(33ccff20)";
					"col.active.border" = "rgba(33ccffee)";
					"col.inactive" = "rgba(30303020)";
					"col.inactive.border" = "rgba(595959aa)";
					"col.urgent" = "rgba(ff223340)";
					"col.urgent.border" = "rgba(ff2233ee)";
        };
      };
    };
  };
}
