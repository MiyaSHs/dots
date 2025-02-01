{ lib, config, pkgs, ... }: 
{
  services = {
    mako = {
      enable = true;
      backgroundColor = "#f38ba8FF";
      borderRadius = 15;
      #borderColor = "#f38ba8FF";
      borderSize = 0;
      textColor = "#1e1e2eFF";
      font = "CaskaydiaCove Nerd Font 12";
      defaultTimeout = 5000;
      maxVisible = 2;
      layer = "overlay";
      anchor = "top-center";
    };
  };
  catppuccin.mako.enable = false;
}
