{ inputs, pkgs, ...}: 
{
  home.packages = with pkgs; [
    waypaper
    swww
    swaybg
    grimblast
    hyprpicker
    grim
    slurp
    cliphist
    direnv
    swaylock-effects
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
      # hidpi = true;
    };
    # enableNvidiaPatches = false;
    systemd.enable = true;
    systemd.variables = ["--all"];
  };
}
