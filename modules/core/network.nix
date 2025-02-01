{ config, pkgs, lib, ... }: 
{
  networking = {
    hostName = "miyavour";
    wireless = {
      iwd.enable = true;
      iwd.settings = {
        IPv6 = {
          Enabled = true;
        };
        Settings = {
          AutoConnect = true;
        };
      };
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
  services.printing.enable = true;
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
  systemd.network.wait-online.enable = false;
  boot.initrd.systemd.network.wait-online.enable = false;
  services = {
    tor = {
      enable = true;
      client.dns.enable = true;
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
