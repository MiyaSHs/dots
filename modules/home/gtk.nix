{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = [
    pkgs.nerdfonts
    pkgs.twemoji-color-font
    pkgs.noto-fonts-emoji
    pkgs.font-awesome
    pkgs.gradience
    pkgs.adw-gtk3
  ];
  
  home.pointerCursor = {
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
  catppuccin.pointerCursor.enable = true;

  gtk = {
    enable = true;
    theme.name = "adw-gtk3-dark";
    catppuccin = {
      icon.enable = true;
    };

    font = {
      name = "CaskaydiaCove Nerd Font";
      size = 11;
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "kvantum";
    style = {
      name = "kvantum";
      catppuccin = {
        enable = true;
	apply = true;
      };
    };
  };
}
