{...}:
{
  programs.nushell = {
    enable = true;
    extraConfig = ''
      $env.config.show_banner = false

      if (which tmux | is-not-empty) and ($env.TMUX? | default "" | is-empty) {
        try { tmux attach-session -t default } catch { tmux new-session -s default }
      }
    '';
  };
}
