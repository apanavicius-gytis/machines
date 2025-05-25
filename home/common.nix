{pkgs, nvim, ...}: 
{
  imports = [
    ./modules/tmux
    ./modules/ghostty
    ./modules/zsh
    ./modules/git
  ];

  home.packages = with pkgs; [
    nvim.packages.${pkgs.system}.default
    lazygit
    ripgrep
  ];
}
