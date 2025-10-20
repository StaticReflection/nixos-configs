{ config, lib, pkgs, ... }:

{
    imports = [
        ./programs
    ];

    home.stateVersion = "25.05";

    home.username = "reflexia";
    home.homeDirectory = lib.mkForce "/home/reflexia";
}