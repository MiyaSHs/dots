{ config, pkgs, lib, ... }: 
{
  networking = {
    hostName = "miyavour";
    networkmanager.enable = true;
    nftables.enable = true;
    firewall = {
      enable = true;
      trustedInterfaces = [ "virbr0" ];
      allowedUDPPorts = [];
      allowedTCPPorts = [];
    };
  };
}
