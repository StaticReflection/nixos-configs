{ pkgs, ... }:

{
  imports = [
    ./sddm.nix
    ./plasma6.nix
    ./cosmic.nix
  ];

  services.displayManager.sessionPackages = with pkgs; [ niri ];
}
