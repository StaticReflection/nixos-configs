{ pkgs, ... }:

{
  users.users.reflexia = {
    description = "ReFLEXiA";
    isNormalUser = true;
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "libvirtd"
    ];
    shell = pkgs.fish;
  };
}
