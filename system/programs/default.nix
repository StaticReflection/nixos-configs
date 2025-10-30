{ pkgs, ... }:

{
  imports = [
    ./fish.nix
    ./teamviewer.nix
  ];

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    kubectl
    fastfetch
    python314
    conda
    libglibutil
    glib
    glibc
    tree
    nixfmt-rfc-style # Nix code formatter
    xwayland-satellite
  ];
}
