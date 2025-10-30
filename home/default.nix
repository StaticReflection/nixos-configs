{ pkgs, ... }:

{
  users.users.reflexia = {
    description = "ReFLEXiA";
    isNormalUser = true;
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
    shell = pkgs.fish;
  };
}
