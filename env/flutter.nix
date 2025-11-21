{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    flutter # Flutter SDK
  ];

  # Web
  environment.variables = {
    CHROME_EXECUTABLE = "${pkgs.google-chrome}/bin/google-chrome-stable";
  };
}
