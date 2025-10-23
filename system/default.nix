{
  imports = [
    ./IME
    ./boot
    ./gui
    ./fonts
    ./localization
    ./network
    ./programs
    ./shell
    ./sound
    ./theme
    ./VT
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}
