{ pkgs, ... }:

{
  imports = [
    ./sddm.nix
    ./plasma6.nix
  ];

  services.displayManager.sessionPackages = with pkgs; [ niri ];
}
