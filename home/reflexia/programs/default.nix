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
    ./kitty.nix
  ];

  home.packages = with pkgs; [
    discord # Discord
    telegram-desktop # Telegram
    microsoft-edge # Microsoft Edge
    prismlauncher # Prism Launcher (Minecraft)
    feishu # Feishu (Lark)
    libreoffice-qt # LibreOffice with Qt5
    bitwarden-desktop # Bitwarden
    _7zz-rar # 7zz with RAR support
    kdePackages.kcalc # KCalc 计算器
    waydroid-helper # Waydroid helper script
    nur.repos.shadowrz.klassy-qt6 # Klassy Qt6 theme
    vlc # VLC media player
    appimage-run # AppImage support
    wechat-uos # WeChat UOS version
    qbittorrent-enhanced # qBittorrent Enhanced Edition
    hoppscotch # Hoppscotch
    drawio # draw.io
  ];
}
