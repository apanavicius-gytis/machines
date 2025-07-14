{...} : 
{
launchd.user.agents.aerospace = {
  enable = true;
  config = {
    ProgramArguments = [ "/Users/gytis.apanavicius/.nix-profile/bin/aerospace" ];
    RunAtLoad = true;
    KeepAlive = false;
  };
};
}
