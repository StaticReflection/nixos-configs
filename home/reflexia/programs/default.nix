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
  ];

  home.packages = with pkgs; [
    discord
    telegram-desktop
    microsoft-edge
    prismlauncher
    feishu
    libreoffice-qt
    bitwarden-desktop
    _7zz-rar
    kdePackages.kcalc
    waydroid-helper
    nur.repos.shadowrz.klassy-qt6
    vlc
    appimage-run
    wechat-uos
    qbittorrent-enhanced
  ];
}
