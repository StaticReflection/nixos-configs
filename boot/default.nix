{ config, ... }:

{
  imports = [
    ./systemd-boot.nix
  ];

  boot.loader = {
    timeout = 0;
    efi.canTouchEfiVariables = true;
  };
}
