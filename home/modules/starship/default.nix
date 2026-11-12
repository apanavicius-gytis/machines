{...}:
{
  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
    settings = {
      format = "$directory$git_branch$nix_shell$character";
      directory.truncate_to_repo = false;
      git_branch.format = "[$branch](bold purple) ";
      nix_shell.format = "[$symbol]($style) ";
      nix_shell.symbol = "❄️ ";
    };
  };
}
