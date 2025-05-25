{... }:
{
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
     initContent = ''
       if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
         tmux attach-session -t default || tmux new-session -s default
      fi

      eval "$(direnv hook zsh)"
     '';
    oh-my-zsh = {
      enable = true;
      theme = "amuse";  
      plugins = [ "git" "direnv"  ]; 
    };
  };
}
