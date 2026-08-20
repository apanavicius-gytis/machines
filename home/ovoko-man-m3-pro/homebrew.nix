{ inputs, config, ... }:

{
  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = "gytis.apanavicius";
    taps = {
      "homebrew/homebrew-core" = inputs.homebrew-core;
      "homebrew/homebrew-bundle" = inputs.homebrew-bundle;
      "homebrew/homebrew-cask" = inputs.homebrew-cask;
      "barutsrb/homebrew-tap" = inputs.homebrew-barutsrb;
      "gammons/homebrew-tap" = inputs.homebrew-gammons;
    };
    trust = {
      formulae = [

      ];
      casks = [
        "barutsrb/homebrew-tap/omniwm"
        "gammons/homebrew-tap/slk"
      ];
      commands = [

      ];
      taps = [

      ];
    };
    mutableTaps = false;
  };

  homebrew.enable = true;
  homebrew.taps = builtins.attrNames config.nix-homebrew.taps;

  homebrew.casks = [
    "barutsrb/homebrew-tap/omniwm"
    "gammons/homebrew-tap/slk"
  ];
}
