{ config, pkgs, username, ... }:
{
  # Add user to libvirtd group
  users.users.${username}.extraGroups = [ "adbusers" ];

  virtualisation = {
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
    containers.enable = true;
    podman = {
      enable = true;
      dockerCompat = true;
      #defaultNetwork.settings.dns_enabled = true;
    };
  };
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "${username}" ];

  programs.darling.enable = true;
  
  # ADB
  programs.adb.enable = true;
  environment.systemPackages = [
    pkgs.gnirehtet
  ];
}
