{ ... }:
{
  home.sessionVariables = {
    MOZ_ENABLE_WAYLAND = "1";
    NIXOS_OZONE_WL = "1";
    GDK_BACKEND = "wayland,x11,*";
    QT_QPA_PLATFORM = "wayland;xcb";
    SDL_VIDEODRIVER = "wayland";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    EDITOR = "nvim";
    GDK_SCALE = "1.25";
    ELM_SCALE= "1.25";
    QT_SCALE_FACTOR = "1.25";
    XCURSOR_SIZE = "32";
  };
}
