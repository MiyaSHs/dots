{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    cmatrix
    gparted                           # partition manager
    killall
    man-pages		              # extra man pages
    pamixer
    pavucontrol                       # pulseaudio volume controle (GUI)
    playerctl                         # controller for media players
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    cliphist                          # clipboard manager
    unzip
    unrar
    appimage-run
    xdg-utils
    xorg.xeyes
    wineWowPackages.stagingFull
    dxvk
    vkd3d
    adwsteamgtk
    vulkan-tools
    wget
    selectdefaultapplication
    ani-cli
    nemo-with-extensions
    mangohud
    gnome-software
    networkmanagerapplet
    file-roller
    tangram
  ]);
}
