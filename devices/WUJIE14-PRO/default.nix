{
  imports = [
    ./hardware-configuration.nix
    ./bluetooth.nix
  ];

  hardware.graphics.enable32Bit = true;
}
