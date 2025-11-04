{ pkgs, ... }:

{
  imports = [
    ./git.nix
    ./vscode.nix
    # ./niri.nix
    ./lutris.nix
    ./linuxqq.nix
    ./steam.nix
  ];

  home.packages = with pkgs; [
    discord
    telegram-desktop
    microsoft-edge
    prismlauncher
    feishu
    libreoffice-qt
    bitwarden-desktop
    p7zip
    kdePackages.kcalc
    waydroid-helper
    nur.repos.shadowrz.klassy-qt6
    vlc
    appimage-run
    wechat-uos
  ];
}
