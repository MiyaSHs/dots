{ pkgs, ... }:
{
  home.packages = [
    pkgs.nerd-fonts.caskaydia-cove
    pkgs.twemoji-color-font
    pkgs.noto-fonts-emoji
    pkgs.font-awesome
    pkgs.gradience
    pkgs.adw-gtk3
  ];
  
  home.pointerCursor = {
    size = 32;
    gtk.enable = true;
    x11.enable = true;
    hyprcursor.enable = true;
    hyprcursor.size = 32;
  };
  catppuccin.cursors.enable = true;
  catppuccin.gtk = {
    enable = true;
    icon.enable = true;
  };

  gtk = {
    enable = true;
    #theme.name = "adw-gtk3";

    font = {
      name = "CaskaydiaCove Nerd Font";
      size = 12;
    };
  };
  
  qt = {
    enable = true;
    style.name = "kvantum";
    platformTheme.name = "kvantum";
  };

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      emoji = [ "Twitter Color Emoji" ];
      monospace = [ "CaskaydiaCove Nerd Font Mono" ];
      sansSerif = [ "CaskaydiaCove Nerd Font" ];
      serif = [ "CaskaydiaCove Nerd Font" ];
    };
  };
}
