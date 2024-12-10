{ pkgs, ... }:
{
  programs.gamescope.enable = true;
  programs.gamemode.enable = true;
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
  environment.systemPackages = [
    pkgs.mangohud
  ];
  services.sunshine = {
    enable = true;
    capSysAdmin = true;
    openFirewall = true;
  };
  programs.alvr = {
    enable = true;
    openFirewall = true;
  };
}
