{ pkgs, ... }:

{
  imports = [
    ./git.nix
    ./zsh.nix
    ./vscode.nix
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
  ];
}
