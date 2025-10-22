{ pkgs, ... }:

{
    imports = [
        ./git.nix
        ./zsh.nix
        ./vscode.nix
    ];

    home.packages = with pkgs; [
        telegram-desktop
        clash-verge-rev
        microsoft-edge
        prismlauncher
        qq
	    feishu
        libreoffice-qt
        bitwarden-desktop
        p7zip
        kdePackages.kcalc
    ];
}
