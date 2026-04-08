{pkgs, nvim, ...}: 
{
  imports = [
    ./modules/tmux
    ./modules/zsh
    ./modules/git
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

    # Entertainment
    spotify
    
  ];
}
