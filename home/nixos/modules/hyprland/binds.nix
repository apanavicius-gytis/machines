{
      wayland.windowManager.hyprland.settings.bind = [
        # shortcuts
        "$mod,Return,exec,ghostty"
        "$mod,d,exec,rofi -show drun"
        #hy3
        "$mod,left,hy3:movefocus,l"
        "$mod,right,hy3:movefocus,r"
        "$mod,up,hy3:movefocus,u"
        "$mod,down,hy3:movefocus,d"
        "$mod,h,hy3:movefocus,l"
        "$mod,l,hy3:movefocus,r"
        "$mod,k,hy3:movefocus,u"
        "$mod,j,hy3:movefocus,d"

        "SUPER_SHIFT,left,hy3:movewindow,l"
        "SUPER_SHIFT,right,hy3:movewindow,r"
        "SUPER_SHIFT,up,hy3:movewindow,u"
        "SUPER_SHIFT,down,hy3:movewindow,d"
        "SUPER_SHIFT,h,hy3:movewindow,l"
        "SUPER_SHIFT,l,hy3:movewindow,r"
        "SUPER_SHIFT,k,hy3:movewindow,u"
        "SUPER_SHIFT,j,hy3:movewindow,d"

        "$mod,e,hy3:makegroup,h"
        "$mod,w,hy3:makegroup,v"
        "$mod,q,hy3:makegroup,tab"

        ]
        ++ (
          # workspaces
          # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
          builtins.concatLists (builtins.genList (i:
              let ws = i + 1;
              in [
                "$mod, code:1${toString i}, workspace, ${toString ws}"
                "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            )
            9)
        );
      wayland.windowManager.hyprland.settings.bindl = [
        ",123, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",122, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",121, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ toggle"
      ];
}
