{ inputs, pkgs, ... }: 
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;
    settings = {

      #debug.disable_logs = false;

      # autostart
      exec-once = [
        "waypaper --restore"
	"swayosd-server"
        "waybar"
        "wl-paste --type text --watch cliphist store"
	"wl-paste --type image --watch cliphist store"
      ];

      input = {
        kb_layout = "us";
	kb_variant = "colemak_dh_iso";
        numlock_by_default = true;
        follow_mouse = 1;
        accel_profile = "adaptive";
        sensitivity = 0.3;
	touchpad = {
	  disable_while_typing = false;
	  natural_scroll = true;
	  scroll_factor = 0.5;
	  clickfinger_behavior = true;
	};
      };

      misc = {
        vfr = true;
	disable_hyprland_logo = true;
	background_color = "0x1e1e2e";
      };

      general = {
        layout = "dwindle";
        gaps_in = 2;
        gaps_out = 5;
        border_size = 2;
        "col.active_border" = "$accent";
        "col.inactive_border" = "none";
	allow_tearing = true;
      };

      xwayland.force_zero_scaling = true;

      gestures = {
        workspace_swipe = true;
      };

      dwindle = {
        preserve_split = true;
	smart_split = true;
	pseudotile = true;
      };

      decoration = {
        rounding = 15;
        # active_opacity = 0.90;
        # inactive_opacity = 0.90;
        # fullscreen_opacity = 1.0;

        blur = {
          enabled = false;
          size = 2;
          passes = 1;
          # size = 4;
          # passes = 2;
          brightness = 1;
          noise = 0;
          new_optimizations = true;
          xray = true;
	  vibrancy = 2;
	  contrast = 2;
        };
	
	shadow.enabled = false;
      };

      animations = {
        enabled = true;
        animation = [
	  #"global, 0"
        ];
      };

      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "nemo";
      "$menu" = "wofi --show drun";
      "$nmenu" = "nvidia-offload wofi --show drun";
      "$browser" = "librewolf";

      bind = [
        # keybindings
        "$mainMod, D, exec, $terminal"
        "$mainMod, T, exec, $browser"
	"$mainMod Shift, Q, killactive,"
        "$mainMod, F, fullscreen, "
        "$mainMod, A, togglefloating,"
        "$mainMod, S, exec, $menu"
	"$mainMod Shift, S, exec, $nmenu"
        "$mainMod, L, exec, swaylock -i ~/Pictures/lockscreen/main.png"
        "$mainMod, R, togglesplit,"
        "$mainMod, W, exec, $fileManager"
	"$mainMod, C, pseudo,"

        # screenshot
        "$mainMod, V, exec, grimblast --notify --cursor --freeze copysave area ~/Pictures/$(date +'%Y-%m-%d-At-%Ih%Mm%Ss').png"
        "$mainMod SHIFT, V, exec, grimblast --notify --cursor --freeze copysave output ~/Pictures/$(date +'%Y-%m-%d-At-%Ih%Mm%Ss').png"
 

        # switch focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # switch workspace
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # switch current window to workspace
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        # media and volume controls
        ",XF86AudioRaiseVolume,exec, swayosd-client --output-volume raise
"
        ",XF86AudioLowerVolume,exec, swayosd-client --output-volume lower"
        ",XF86AudioMute,exec, swayosd-client --output-volume mute-toggle"
        ",XF86AudioPlay,exec, playerctl play-pause"
        ",XF86AudioNext,exec, playerctl next"
        ",XF86AudioPrev,exec, playerctl previous"
        ",XF86AudioStop, exec, playerctl stop"

	# brightness
	",XF86MonBrightnessDown, exec, swayosd-client --brightness -10"
	",XF86MonBrightnessUp, exec, swayosd-client --brightness +10"

	# scroll through workspaces
        #"$mainMod, mouse_down, scroller:movefocus, r"
        #"$mainMod, mouse_up, scroller:movefocus, l"

        # clipboard manager
        "$mainMod, X, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"
      ];

      # mouse binding
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
	"ALT, mouse:272, resizewindow"
      ];

      # windowrule
      windowrule = [
      ];

      # windowrulev2
      windowrulev2 = [
        #"suppressevent maximize, class:.*"
        "float, title:^(Picture-in-Picture)$"
        "pin, title:^(Picture-in-Picture)$"
	"keepaspectratio, title:^(Picture-in-Picture)$"	
	"float, title:^(Picture in picture)$"
        "pin, title:^(Picture in picture)$"
	"keepaspectratio, title:^(Picture in picture)$"	
        "float,class:^(pavucontrol)$"
        "float,class:^(file_progress)$"
        "float,class:^(confirm)$"
        "float,class:^(dialog)$"
	"float,title:^(Authenticate)$"
	"float,class:^(org.gnome.FileRoller)$"
	"pin,title:^(Authenticate)$"
	"float,title:^(Unlock Keyring)$"
	"pin,title:^(Unlock Keyring)$"
        "float,class:^(download)$"
        "float,class:^(notification)$"
        "float,class:^(error)$"
        "float,class:^(confirmreset)$"
        "float,title:^(Open File)$"
        "float,title:^(branchdialog)$"
        "float,title:^(Confirm to replace files)$"
        "float,title:^(File Operation Progress)$"
	"float,class:^(xdg-desktop-portal-gtk)$"
      ];

    };

    extraConfig = "
      monitor=eDP-1, preferred,auto,1.25
    ";
  };
}

