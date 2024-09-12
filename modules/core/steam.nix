{ pkgs, ... }:
{
  programs.gamescope.enable = true;
  programs.gamemode.enable = true;
  chaotic.steam.extraCompatPackages = [ pkgs.proton-ge-custom ];
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
}
