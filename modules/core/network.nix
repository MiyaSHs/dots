{ config, pkgs, lib, ... }: 
{
  networking = {
    hostName = "miyavour";
    networkmanager = {
      enable = true;
      #dns = "none";
    };
    nftables.enable = true;
    nameservers = [ "127.0.0.1" ];
    firewall = {
      enable = true;
      trustedInterfaces = [ "virbr0" ];
      allowedUDPPorts = [];
      allowedTCPPorts = [];
    };
  };
  services = {
    tor = {
      enable = true;
      client = {
        dns.enable = true;
      };
      settings.DNSPort = [{
        addr = "127.0.0.1";
        port = 53;
      }];
    };
    resolved = {
      enable = true; # For caching DNS requests.
      fallbackDns = [ "" ]; # Overwrite compiled-in fallback DNS servers.
    };
  };
}
