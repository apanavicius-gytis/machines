{...}: 
{
  programs.aerospace = {
    enable = true;
    userSettings = {
  after-startup-command = [
    "exec-and-forget borders active_color=0xffe1e3e4 inactive_color=0xff494d64 width=5.0"
  ];

  enable-normalization-flatten-containers = false;
  enable-normalization-opposite-orientation-for-nested-containers = false;

  on-focus-changed = "move-mouse window-lazy-center";

  on-focused-monitor-changed = [
    "move-mouse monitor-lazy-center"
  ];

  mode = {
    main = {
      binding = {
        "alt-0" = "workspace 10";
        "alt-1" = "workspace 1";
        "alt-2" = "workspace 2";
        "alt-3" = "workspace 3";
        "alt-4" = "workspace 4";
        "alt-5" = "workspace 5";
        "alt-6" = "workspace 6";
        "alt-7" = "workspace 7";
        "alt-8" = "workspace 8";
        "alt-9" = "workspace 9";
        "alt-down" = "focus --boundaries-action wrap-around-the-workspace down";
        "alt-e" = "layout tiles horizontal vertical";
        "alt-enter" = "exec-and-forget open -n /Applications/Ghostty.app";
        "alt-f" = "fullscreen";
        "alt-h" = "split horizontal";
        "alt-left" = "focus --boundaries-action wrap-around-the-workspace left";
        "alt-r" = "mode resize";
        "alt-right" = "focus --boundaries-action wrap-around-the-workspace right";
        "alt-s" = "layout v_accordion";
        "alt-shift-0" = "move-node-to-workspace 10";
        "alt-shift-1" = "move-node-to-workspace 1";
        "alt-shift-2" = "move-node-to-workspace 2";
        "alt-shift-3" = "move-node-to-workspace 3";
        "alt-shift-4" = "move-node-to-workspace 4";
        "alt-shift-5" = "move-node-to-workspace 5";
        "alt-shift-6" = "move-node-to-workspace 6";
        "alt-shift-7" = "move-node-to-workspace 7";
        "alt-shift-8" = "move-node-to-workspace 8";
        "alt-shift-9" = "move-node-to-workspace 9";
        "alt-shift-c" = "reload-config";
        "alt-shift-down" = "move down";
        "alt-shift-left" = "move left";
        "alt-shift-right" = "move right";
        "alt-shift-space" = "layout floating tiling";
        "alt-shift-up" = "move up";
        "alt-up" = "focus --boundaries-action wrap-around-the-workspace up";
        "alt-v" = "split vertical";
        "alt-w" = "layout h_accordion";
      };
    };

    resize = {
      binding = {
        "enter" = "mode main";
        "esc" = "mode main";
        "h" = "resize width -50";
        "j" = "resize height +50";
        "k" = "resize height -50";
        "l" = "resize width +50";
      };
    };
  };

  workspace-to-monitor-force-assignment = {
    "1" = [ "Q27G2SG4" "LG ULTRAFINE" "main" ];
    "2" = [ "Q27G2SG4" "LG ULTRAFINE" "main" ];
    "3" = [ "Q27G2SG4" "LG ULTRAFINE" "main" ];
    "4" = [ "27G1G4" "^built-in retina display$" "main" ];
    "5" = [ "27G1G4" "^built-in retina display$" "main" ];
    "6" = [ "27G1G4" "^built-in retina display$" "main" ];
    "7" = [ "^built-in retina display$" "secondary" ];
    "8" = [ "^built-in retina display$" "secondary" ];
  };
};
};
}
