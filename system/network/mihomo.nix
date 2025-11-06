{ pkgs, ... }:

{
  services.mihomo = {
    enable = true;
    tunMode = true;
    webui = pkgs.metacubexd;
    configFile = "/home/reflexia/Configs/Mihomo/config.yaml";
  };
}
