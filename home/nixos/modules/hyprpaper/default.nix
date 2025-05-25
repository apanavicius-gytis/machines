{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "off";
      splash = false;
      preload = [
        "/etc/nixos/media/bg.jpg"
      ];

      wallpaper = [
        "DP-1,/etc/nixos/media/bg.jpg"
        "DP-2,/etc/nixos/media/bg.jpg"
      ];
    };
  };
}
