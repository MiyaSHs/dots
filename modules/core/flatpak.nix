{ pkgs, config, username, ... }:
{
  services.flatpak = {
    enable = true;
  };
#    update.onActivation = true;
#    uninstallUnmanaged = true;
#    remotes = [{
#      name = "flathub"; location = "https://flathub.org/repo/flathub.flatpakrepo";
#    }];
#    overrides = {
#      global = {
#        Context = {
#	  sockets = ["wayland" "!x11" "fallback-x11"];
#          filesystems = [
#            "/nix/store:ro"
#	    "/run/current-system/sw/share/X11/fonts:ro"
#	    "$HOME/.local/share/fonts:ro"
#	    "$HOME/.icons:ro"
#	    "xdg-config/gtk-4.0:ro"
#	    "xdg-config/gtk-3.0:ro"
#          ];
#	};
#      };
#    };
#  };
}
