{ lib, config, pkgs, ... }: 
{
  services = {
    mako = {
      enable = true;
      backgroundColor = "#11111bFF";
      borderRadius = 15;
      borderColor = "#f38ba8FF";
      borderSize = 2;
      textColor = "#89dcebFF";
      font = "CaskaydiaCove Nerd Font 12";
      defaultTimeout = 5000;
      maxVisible = 2;
      layer = "overlay";
      anchor = "top-center";
    };
  };
  catppuccin.mako.enable = false;
}
