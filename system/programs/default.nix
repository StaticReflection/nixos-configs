{ pkgs, ... }:

{
  imports = [ ];

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    kubectl
    fastfetch
    libglibutil
    glib
    glibc
    tree
    nixfmt-rfc-style # Nix code formatter
    xwayland-satellite
  ];
}
