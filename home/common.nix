{pkgs, nvim, ...}:
{
  home.file.".my.cnf".text = ''
    [mysql]
    table
  '';

  imports = [
    ./modules/tmux
    ./modules/zsh
    ./modules/git
    ./modules/nushell
    ./modules/starship
  ];

  home.packages = with pkgs; [
    # Just makes sense
    google-chrome

    # Development
    nvim.packages.${pkgs.system}.default
    lazygit
    ripgrep
    devenv
    podman
    podman-compose
    claude-code

    # Entertainment
    spotify
    
  ];
}
