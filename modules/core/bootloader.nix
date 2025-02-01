{pkgs, ... }:
{
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.useOSProber = true;
  #boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.plymouth.enable = true;
  boot.kernel.sysctl."vm.max_map_count" = 2147483642;
  boot.kernelPackages = pkgs.linuxPackages_cachyos-lto;
  services.scx = {
    enable = true;
    scheduler = "scx_lavd";
  };
  boot.kernelParams = [
    "intel_iommu=on"
    "iommu=pt"
    "intel_pstate=disable"
  ];
  boot.supportedFilesystems =
    {
    bcachefs = true;
    f2fs = true;
    btrfs = true;
    };
}
