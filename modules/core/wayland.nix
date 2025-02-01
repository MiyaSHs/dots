{ inputs, pkgs, lib, ... }:
{
  programs.hyprland = {
    enable = true;
    portalPackage = pkgs.xdg-desktop-portal-wlr;
    withUWSM = true;
  };
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
  #services.displayManager.ly = {
  #  enable = true;
  #};
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "colemak_dh_iso";
    };
    displayManager.startx.enable = true;
  };
}
