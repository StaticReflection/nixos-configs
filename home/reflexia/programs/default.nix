{ pkgs, ... }:

{
    imports = [
        ./git.nix
        ./zsh.nix
    ];

    home.packages = with pkgs; [
        telegram-desktop
        clash-verge-rev
        microsoft-edge
        vscode
        prismlauncher
        vscode
        qq
	    feishu
        libreoffice-qt
        waydroid
        bitwarden-desktop
    ];
}
