{pkgs, ... }:
{
  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.git;
    lfs ={
      enable = true;
    };
  };
}
