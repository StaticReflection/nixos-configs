{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        vim
        wget
        git
        kubectl
        fastfetch
        python314
        conda
    ];
}