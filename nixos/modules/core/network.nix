{ pkgs, ... }: 
{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    nameservers = [ "192.168.3.2" ];
    firewall = {
      enable = true;
      allowedTCPPorts = [ 57621 ];
      allowedUDPPorts = [ 5353 ];
    };
  };
}
