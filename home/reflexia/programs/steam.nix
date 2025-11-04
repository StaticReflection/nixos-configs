{ pkgs, ... }:

{
  home.packages = with pkgs; [
    (steam.override {
      extraPkgs = pkgs: [
        noto-fonts-cjk-sans
      ];
    })
  ];
}
