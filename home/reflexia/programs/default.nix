{ pkgs, ... }:

{
  imports = [
    ./git.nix
    ./vscode.nix
    ./niri.nix
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
    piliplus
    google-chrome
    netease-cloud-music-gtk
    nur.repos.shadowrz.klassy-qt6
  ];
}
