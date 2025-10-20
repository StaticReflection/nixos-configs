{
    imports = [
        ./IME
        ./boot
        ./desktop-manager
        ./display-manager
        ./fonts
        ./localization
        ./network
        ./programs
        ./shell
        ./sound
        ./theme
    ];

    nixpkgs.config.allowUnfree = true;
    
    system.stateVersion = "25.05";
}