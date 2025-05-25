{
  programs.waybar.style = ''
    window#waybar {
      background: linear-gradient(to top, rgba(0,0,0,0.8), rgba(0,0,0,1));
      padding-top: 5px;
      transition-property: background-color;
      transition-duration: .5s;
    }

    * {
      color: #ffffff;
    }

    #workspaces button.focused {
      background-color: #202231;
      border-radius: 0;
    }

    #workspaces button.active {
      background-color: #202231;
      border-radius: 0;
    }

    #workspaces button.urgent {
      background-color: #202231;
      border-radius: 0;
    }

    #cpu, #memory, #clock {
      padding-right: 15px;
    }
  '';
}
