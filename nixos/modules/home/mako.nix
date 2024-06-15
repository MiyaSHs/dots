{ config, pkgs, ... }: 
{
  services = {
    mako = {
      enable = true;
      font = "CaskaydiaCove Nerd Font 12";
      defaultTimeout = 5000;
    };
  };
}
