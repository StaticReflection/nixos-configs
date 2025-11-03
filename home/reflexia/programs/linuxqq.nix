{
  config,
  pkgs,
  nur,
  ...
}:
let
  linuxqq_pkg =
    with pkgs;
    appimageTools.wrapType2 ({
      pname = "linuxqq";
      version = "3.2.20";
      src = fetchurl {
        sha256 = "sha256-ffWYfNB5Snr8bz6GtnnAa4OEi1iXw4r5mAiRhhBSEME=";
        url = "https://dldir1v6.qq.com/qqfile/qq/QQNT/Linux/QQ_3.2.20_251023_x86_64_01.AppImage";
      };
      extraPkgs = pkgs: with pkgs; [ ];
    });
  icons = ../../../assets/icons/linuxqq.png;
in
{
  home.packages = with pkgs; [
    linuxqq_pkg
  ];

  home.file = {
    ".local/share/applications/QQ.desktop".text = ''
      [Desktop Entry]
      Version=3.2.20
      Type=Application
      Name=QQ
      Exec=linuxqq
      Icon=${icons}
      StartupWMClass=qq
      StartupNotify=true
    '';
  };
}
