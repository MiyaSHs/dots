{inputs, username, host, ...}: {
  imports =
       [(import ./catppuccin.nix)]                # Automatic Catppuccin theming
    ++ [(import ./git.nix)]                       # version control
    ++ [(import ./gtk.nix)]                       # gtk theme
    ++ [(import ./hyprland)]                      # window manager
    ++ [(import ./mako.nix)]                      # notification deamon
    ++ [(import ./nvim.nix)]                      # neovim editor
    ++ [(import ./mpv.nix)]                       # video player
    ++ [(import ./imv.nix)]                       # image viewer
    ++ [(import ./packages.nix)]                  # other packages
    ++ [(import ./waybar)]                        # status bar
    ++ [(import ./wofi.nix)]                      # launcher
    ++ [(import ./keyring.nix)]
    ++ [(import ./terminal.nix)];  
}
