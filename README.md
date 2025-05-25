lol ill do it (probs), still WIP

## TODO 
migrate shared stuff from `configurations.nix` to shared modules (enable zsh, etc.)

# MacOS - darwin
Lix must be installed!

`sudo ln -s /path/to/this/repo /etc/nix-darwin`

in `/etc/nix/nix.conf` : 
`experimental-features = nix-command flakes`

install nix-darwin with `sudo nix run nix-darwin/nix-darwin-24.11#darwin-rebuild -- switch`
rebuild nix-darwin flake with home manager `sudo darwing-rebuild switch`

## Migrating stuff from homebrew (or app store) to Nix home-configuration
`brew uninstall nvim` or remove it in any other way
`sudo darwin-rebuild switch`
