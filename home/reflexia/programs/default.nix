{ pkgs, ... }:

{
  imports = [
    ./git.nix
    ./vscode.nix
    # ./niri.nix
    ./lutris.nix
    ./linuxqq.nix
  ];

  home.packages = with pkgs; [
    telegram-desktop
    microsoft-edge
    prismlauncher
    feishu
    libreoffice-qt
    bitwarden-desktop
    p7zip
    kdePackages.kcalc
    steam
    waydroid-helper
    nur.repos.shadowrz.klassy-qt6
    vlc
    appimage-run
  ];
}
