{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    flutter # Flutter SDK
  ];
}
