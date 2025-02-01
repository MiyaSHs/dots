{ self, config, pkgs, lib, inputs, ...}: 
{
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
      substituters = [""];
      trusted-public-keys = [""];
      system-features = [ "benchmark" "big-parallel" "kvm" "nixos-test" "gccarch-skylake" ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
  #nixpkgs.hostPlatform = {
  #  gcc.arch = "skylake";
  #  gcc.tune = "skylake";
  #  system = "x86_64-linux";
  #};
  chaotic.nyx.cache.enable = true;
  fonts.fontDir.enable = true;
  zramSwap.enable = true;
  #zramSwap.algorithm = "zstd";
  #zramSwap.memoryPercent = 80;
  #swapDevices = [ {
  #  device = "/var/lib/swapfile";
  #  size = 64*1024;
  #} ];
  console.useXkbConfig = true;
  programs.dconf.enable = true;
  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";
}
