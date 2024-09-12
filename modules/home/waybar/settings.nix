{ ... }:
{
  programs.waybar.settings.mainBar = {
    position= "top";
    layer= "bottom";
    height= 24;
    spacing= 0;
    margin-top= 0;
    margin-bottom= 0;
    margin-left= 0;
    margin-right= 0;
    modules-left= [
        "custom/launcher" 
        "hyprland/workspaces"
    ];
    modules-center= [
        "mpris"
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
        format = "{name}";
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
    mpris= {
	format= "  {title}";
	format-paused= "  <i>{title}</i>";
	ignored-players= [ "firefox" "librewolf" "brave" ];
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
