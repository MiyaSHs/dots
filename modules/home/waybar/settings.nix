{ ... }:
{
  programs.waybar.settings.mainBar = {
    position= "top";
    layer= "bottom";
    width= 10;
    height= 24;
    spacing= 0;
    margin-top= 5;
    margin-bottom= 0;
    margin-left= 0;
    margin-right= 0;
    modules-left= [
        "custom/launcher" 
	"clock"
        "hyprland/workspaces"
	"tray"
    ];
    modules-center= [
    ];
    modules-right= [
	"battery"
	"backlight"
	"pulseaudio"
	"bluetooth"
        "network"
	"disk"
    ];
    bluetooth = {
      format-on = "On 󰂯";
      format-off = "Off 󰂯";
      format-disabled = "Off 󰂯";
      format-connected-battery = "{device_battery_percentage}% 󰂯";
      tooltip-format-connected-battery = "{device_alias}";
      on-click = "blueman-manager";
    };
    backlight = {
      device = "intel_backlight";
      format = "{percent}% {icon}";
      format-icons = ["󰖨"];
      on-scroll-up = "brightnessctl s +10%";
      on-scroll-down = "brightnessctl s 10%-";
    };
    battery = {
      interval = 60;
      states = {
        warning = 30;
        critical = 15;
      };
      format = "{capacity}% {icon}";
      format-icons = [ "" "" "" "" "" ];
    };
    clock= {
        calendar = {
          format = { today = "<span color='#b4befe'><b><u>{}</u></b></span>"; };
        };
        format = "{:%H:%M} 󰥔";
        tooltip= "true";
        tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt= "{:%d/%m} ";
    };
    "hyprland/workspaces" = {
        format = "{icon}";
        on-click= "activate";
        format-icons= {
            urgent= "";
	    active= "";
            default = "";
        };
	sort-by-number = "true";
	#persistent-workspaces = {
        #  "*"= 10;
	#};
    };
    cava= {
      bars= 32;
      bar_delimiter= 0;
      sleep_timer= 60;
      hide_on_silence= false;
      source= "auto";
      input_delay= 0;
      framerate= 60;
      format-icons= ["▁" "▂" "▃" "▄" "▅" "▆" "▇" "█"];
    };
    mpris= {
	format= "  {title}";
	title-len= 32;
	ellipsis= "~";
	format-paused= "  <i>{title}</i>";
	ignored-players= [  ];
    };
    memory= {
        format= "{percentage}% ";
	inverval= 2;
    };
    cpu= {
        format= "{usage}% ";
        format-alt= "{avg_frequency} GHz ";
        interval= 2;
    };
    disk = {
        # path = "/";
        format = "{percentage_used}% ";
	tooltip-format = "{used} / {total}";
        interval= 60;
    };
    network = {
        format-wifi = "{ipaddr} ";
        format-ethernet = "{bandwidthTotalBytes} 󰈀";
        tooltip-format = "{essid} ({signalStrength}%)";
        format-linked = "{ifname} (No IP)";
        format-disconnected = "󰖪";
	interval= 30;
    };
    tray= {
        #icon-size= 20;
        spacing= 8;
    };
    pulseaudio= {
        format= "{volume}% {icon}";
	format-muted= "{volume}% ";
        format-icons= {
	  default= ["" "" ""];
        };
        on-click= "pavucontrol";
    };
    "custom/launcher"= {
        format= "";
        on-click= "wofi --show drun";
        tooltip= "false";
    };
  };
}
