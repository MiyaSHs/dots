{ lib, config, pkgs, ... }: 
{
  services = {
    mako = {
      enable = true;
      font = "CaskaydiaCove Nerd Font 12";
      defaultTimeout = 5000;
      borderSize = 0;
      layer = "overlay";
    };
  };
}
