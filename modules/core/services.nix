{ ... }: 
{
  services = {
    gvfs.enable = true;
    fstrim.enable = true;
  };
  boot.initrd.systemd.dbus.enable = true;
}
