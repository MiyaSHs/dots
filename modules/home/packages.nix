{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    cmatrix
    spicetify-cli
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
    parted
    selectdefaultapplication
    ani-cli
    nemo-with-extensions
    gnome-software
    file-roller
    xdg-user-dirs
    exfat 
    winetricks
    protontricks
    wev
    dipc
  ]);
}
