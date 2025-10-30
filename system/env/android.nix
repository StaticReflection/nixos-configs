{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    android-tools
    android-studio
  ];

  environment.variables = {
    ANDROID_HOME = "${pkgs.android-tools}";
  };
}
