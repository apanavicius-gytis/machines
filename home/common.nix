{pkgs, nvim, ...}: 
{
  imports = [
    ./modules/tmux
    ./modules/zsh
    ./modules/git
  ];

  home.packages = with pkgs; [
    nvim.packages.${pkgs.system}.default
    lazygit
    ripgrep
  ];
}
