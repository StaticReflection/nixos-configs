{
  config,
  inputs,
  pkgs,
  lib,
  ...
}:

{
  imports = [
    inputs.niri.homeModules.niri
  ];

  programs.niri = {
    enable = true;

    settings = {
      # 自启动项
      spawn-at-startup = [
        {
          command = [
            "noctalia-shell"
          ];
        }
        {
          command = [
            "fcitx5"
            "-d"
          ];
        }
      ];

      # 按键绑定
      binds = {
        "Mod+T".action.spawn = "kitty";
      };
    };
  };
}
