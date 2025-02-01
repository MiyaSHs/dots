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
    swayosd
    hyprland-qtutils
  ];
}
