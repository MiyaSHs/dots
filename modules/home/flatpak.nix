{ pkgs, config, username, ... }:
{
  services.flatpak = {
    update.onActivation = true;
    uninstallUnmanaged = false;
    packages = [
      "org.kde.KStyle.Kvantum"
    ];
    overrides = {
      global = {
        Environment = {
          QT_STYLE_OVERRIDE = "kvantum";
	};
        Context = {
          filesystems = [
            "/nix/store:ro"
            "/run/current-system/sw/share/X11/fonts:ro"
            "~/.local/share/fonts:ro"
            "~/.icons:ro"
	    "xdg-config/gtk-4.0:ro"
	    "xdg-config/gtk-3.0:ro"
	    "xdg-config/Kvantum:ro"
          ];
        };
      };
    };
  };
}

