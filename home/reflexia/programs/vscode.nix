{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    profiles.default = {
      # 扩展
      extensions = with pkgs.vscode-extensions; [
        ms-ceintl.vscode-language-pack-zh-hans # 简体中文
        jnoortheen.nix-ide # Nix
        dart-code.dart-code # Dart
        dart-code.flutter # Flutter
      ];
      # 设置
      userSettings = {
        "editor.minimap.enabled" = false; # 控制是否显示缩略图
        "explorer.confirmDelete" = false; # 控制资源管理器是否应在通过回收站删除文件时要求确认
        "breadcrumbs.enabled" = false; # 启用/禁用导航路径
        "explorer.confirmDragAndDrop" = false; # 控制资源管理器是否应在通过拖放移动文件或文件夹时要求确认
        "git.autofetch" = true; # 设置为 true，则自动从当前 Git 仓库的默认远程仓库抓取提交。若设置为“全部”，则从所有远程仓库进行抓取
        "editor.smoothScrolling" = true; # 控制编辑器是否使用动画滚动
        "editor.cursorSmoothCaretAnimation" = "on"; # 始终启用平滑脱字号动画
        "terminal.integrated.smoothScrolling" = true; # 控制终端是否将使用动画滚动
        "editor.cursorBlinking" = "smooth"; # 控制光标的动画样式
        "editor.formatOnSave" = true; # 保存时设置文件格式。格式化程序必须可用，并且不得关闭编辑器。当 #files.autoSave# 设置为 afterDelay 时，仅在显式保存时才会格式化文件
      };
    };
  };
}
