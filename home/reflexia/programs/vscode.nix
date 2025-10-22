{ pkgs, ... }:

{
    programs.vscode = {
        enable = true;
        
        profiles.default = {
            extensions = with pkgs.vscode-extensions; [
                ms-ceintl.vscode-language-pack-zh-hans  # 简体中文
                jnoortheen.nix-ide  # Nix
                dart-code.dart-code # Dart
                dart-code.flutter   # Flutter
            ];
        };
    };
}