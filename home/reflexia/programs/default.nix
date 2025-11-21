{ pkgs, ... }:

{
  imports = [
    ./git.nix
    ./vscode.nix
    ./niri.nix
    ./lutris.nix
    ./linuxqq.nix
    ./steam.nix
    ./noctalia.nix
    ./nixvim.nix
    ./kitty.nix
  ];
}
