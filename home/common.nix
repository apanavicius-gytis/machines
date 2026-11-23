{pkgs, pkgs-unstable ? pkgs, nvim, ...}:
{
  home.file.".my.cnf".text = ''
    [mysql]
    table

    [client]
    disable-ssl-verify-server-cert
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
    nvim.packages.${pkgs.stdenv.hostPlatform.system}.default
    lazygit
    gh
    ripgrep
    devenv
    podman
    podman-compose
    pkgs-unstable.claude-code

    # Entertainment
    spotify
    
  ];
}
