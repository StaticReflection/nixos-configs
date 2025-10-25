{ pkgs, ... }:

{
  users.users.reflexia = {
    description = "ReFLEXiA";
    isNormalUser = true;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
  };
}
