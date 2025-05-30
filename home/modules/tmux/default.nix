{pkgs, minimal-tmux, ...}:
{
  programs.tmux = {
    enable = true;
    plugins = [
      pkgs.tmuxPlugins.sensible
      { plugin = minimal-tmux.packages.${pkgs.system}.default; }
    ];

    extraConfig = ''
      # Set default shell explicitly
      set-option -g default-shell ${pkgs.zsh}/bin/zsh

      # Start new windows as login shells (important!)
      set-option -g default-command "exec ${pkgs.zsh}/bin/zsh -l"

      set -g base-index 1
      setw -g pane-base-index 1

      set -g prefix C-h
      unbind C-b
      bind C-h send-prefix


      # These are the default values used inside the plugin to achieve the preview shown above.

      set -g @minimal-tmux-fg "#000000"
      set -g @minimal-tmux-bg "#698DDA"
      set -g @minimal-tmux-justify "centre"
      set -g @minimal-tmux-indicator-str "  tmux  "
      set -g @minimal-tmux-indicator true
      set -g @minimal-tmux-status "bottom"

      # Enables or disables the left and right status bar
      set -g @minimal-tmux-right true
      set -g @minimal-tmux-left true

      # expanded icon (fullscreen icon)
      set -g @minimal-tmux-expanded-icon "󰊓 "

      # on all tabs (default is false)
      # false will make it visible for the current tab only
      set -g @minimal-tmux-show-expanded-icons-for-all-tabs true

      # To add or remove extra text in status bar
      set -g @minimal-tmux-status-right-extra ""
      set -g @minimal-tmux-status-left-extra ""

      # To make the selection box rounded () or edged <>
      # Default is nothing, when set to true default is edged
      set -g @minimal-tmux-use-arrow true
      set -g @minimal-tmux-right-arrow ""
      set -g @minimal-tmux-left-arrow ""

      # Not recommended to change these values
      set -g @minimal-tmux-status-right "#S"
      set -g @minimal-tmux-status-left "refer to code"

      # If getting strings cut in left status or right
      # Here 20 is the length of the characters in the string
      set -g status-right-length 20
      set -g status-left-length 20
    '';
  };
}
