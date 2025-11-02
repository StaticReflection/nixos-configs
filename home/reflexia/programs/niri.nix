{
  config,
  inputs,
  pkgs,
  ...
}:
let
  pkgs-stable = import inputs.nixpkgs-stable { system = "x86_64-linux"; };
in
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

  home.packages = with pkgs; [
    pkgs-stable.libdisplay-info
  ];
}
