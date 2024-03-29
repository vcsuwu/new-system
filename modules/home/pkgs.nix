{pkgs, ...}:

{
  home.packages = with pkgs; [
    firefox
    kitty
		tor-browser
    rofi-wayland
    vesktop
    keepassxc
    zathura
		mpv
		telegram-desktop

    # For hyprland
    dunst
    grim
    slurp
		swaybg

    # Fonts
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];
}
