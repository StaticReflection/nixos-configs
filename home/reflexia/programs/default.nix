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
        hmcl
        prismlauncher
        vscode
        qq
	    feishu
    ];
}
