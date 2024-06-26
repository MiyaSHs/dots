{ ... }:
{
  programs.waybar.settings.mainBar = {
    position= "bottom";
    layer= "top";
    height= 24;
    spacing= 0;
    margin-top= 0;
    margin-bottom= 10;
    margin-left= 10;
    margin-right= 10;
    modules-left= [
        "custom/launcher" 
        "hyprland/workspaces"
    ];
    modules-center= [
        "cava"
    ];
    modules-right= [
        "tray"
        "cpu"
        "memory"
        "disk"
        "pulseaudio" 
        "network"
	"clock"
    ];
    clock= {
        calendar = {
          format = { today = "<span color='#b4befe'><b><u>{}</u></b></span>"; };
        };
        format = "  {:%H:%M}";
        tooltip= "true";
        tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt= "  {:%d/%m}";
    };
    "hyprland/workspaces" = {
        format = "{icon}";
        on-click= "activate";
        format-icons= {
            urgent= "";
            default = "";
        };
	sort-by-number = "true";
    };
    cava= {
      bars= 28;
      bar_delimiter= 0;
      sleep_timer= 60;
      hide_on_silence= false;
      source= "auto";
      input_delay= 0;
      format-icons= ["▁" "▂" "▃" "▄" "▅" "▆" "▇" "█"];
    };
    memory= {
        format= "  {percentage}%";
	inverval= 2;
    };
    cpu= {
        format= "  {usage}%";
        format-alt= "  {avg_frequency} GHz";
        interval= 2;
    };
    disk = {
        # path = "/";
        format = "  {percentage_used}%";
	tooltip-format = "{used} / {total}";
        interval= 60;
    };
    network = {
        format-wifi = "  {signalStrength}%";
        format-ethernet = "  {bandwidthTotalBytes}";
        tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
        format-linked = "{ifname} (No IP)";
        format-disconnected = "󰖪 ";
	interval= 2;
    };
    tray= {
        #icon-size= 20;
        spacing= 8;
    };
    pulseaudio= {
        format= "{icon} {volume}%";
	format-muted= "  {volume}%";
        format-icons= {
	  default= [" " " " " "];
        };
        scroll-step= 5;
        on-click= "pavucontrol";
    };
    "custom/launcher"= {
        format= "";
        on-click= "wofi --show drun";
        tooltip= "false";
    };
  };
}
