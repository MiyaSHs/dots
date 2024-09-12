{ inputs, nixpkgs, self, username, host, ...}:
{
  imports =
       [ (import ./catppuccin.nix) ]
    ++ [ (import ./bootloader.nix) ]
    ++ [ (import ./hardware.nix) ]
    ++ [ (import ./network.nix) ]
    ++ [ (import ./sound.nix) ]
    ++ [ (import ./security.nix) ]
    ++ [ (import ./services.nix) ]
    ++ [ (import ./system.nix) ]
    ++ [ (import ./user.nix) ]
    ++ [ (import ./wayland.nix) ]
    ++ [ (import ./virtualization.nix) ]
    ++ [ (import ./printing.nix) ]
    ++ [ (import ./flatpak.nix) ]
    ++ [ (import ./steam.nix) ];
}
