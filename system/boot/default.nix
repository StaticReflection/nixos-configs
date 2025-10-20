{ config, ... }:

{
  imports = [
    ./systemd-boot.nix
  ];

  boot.loader.efi.canTouchEfiVariables = true;
}