{ pkgs, ... }:

{
  home.packages = with pkgs; [
    (lutris.override {
      extraPkgs = pkgs: [
        # List package dependencies here
        wineWow64Packages.stagingFull
        wineWowPackages.wayland
        wineWowPackages.minimal
      ];
      extraLibraries = pkgs: [
        # List library dependencies here
        wineWow64Packages.fonts
        wineWowPackages.fonts
      ];
    })
  ];
}
