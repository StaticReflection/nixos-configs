{
  config,
  inputs,
  pkgs,
  ...
}:

{
  imports = [
    inputs.niri.homeModules.niri
    inputs.dankMaterialShell.homeModules.dankMaterialShell.default
    inputs.dankMaterialShell.homeModules.dankMaterialShell.niri
  ];

  programs.dankMaterialShell = {
    enable = true;
    niri.enableSpawn = true;
    niri.enableKeybinds = true;
  };

  programs.niri = {
    enable = true;
    settings = {
      spawn-at-startup = [
        {
          command = [
            "fcitx5"
            "-d"
          ];
        }
      ];

    };
  };
}
