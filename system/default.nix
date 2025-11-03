{ pkgs, ... }:

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
    ./env
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.android_sdk.accept_license = true;

  # services.flatpak.enable = true;
  # systemd.services.flatpak-repo = {
  #   wantedBy = [ "multi-user.target" ];
  #   path = [ pkgs.flatpak ];
  #   script = ''
  #     flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  #   '';
  # };

  system.stateVersion = "25.05";
}
