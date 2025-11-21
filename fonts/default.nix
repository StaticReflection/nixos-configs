{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    fontDir.enable = true;

    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
      nerd-fonts.jetbrains-mono
    ];

    fontconfig = {
      defaultFonts = {
        serif = [
          "Noto Serif"
          "Noto Serif CJK SC" # 简体中文衬线
          "Noto Serif CJK TC" # 繁体中文衬线
          "Noto Serif CJK JP" # 日文衬线
        ];
        sansSerif = [
          "Noto Sans"
          "Noto Sans CJK SC" # 简体中文无衬线
          "Noto Sans CJK TC" # 繁体中文无衬线
          "Noto Sans CJK JP" # 日文无衬线
        ];
        monospace = [
          "JetBrainsMono Nerd Font" # 编程字体
          "Noto Sans Mono"
          "Noto Sans Mono CJK SC" # 中文等宽
        ];
        emoji = [
          "Noto Color Emoji" # 彩色表情符号
        ];
      };
    };
  };
}
