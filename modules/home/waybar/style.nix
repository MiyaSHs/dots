{ ... }:
{
  programs.waybar.style = ''
    
    @define-color accent @red;

    * {
        border: none;
	border-radius: 0px;
        padding: 0;
	margin: 0;
        min-height: 0px;
        font-family: CaskaydiaCove Nerd Font;
        font-size: 14px;
    }

    window#waybar {
        background-color: @accent;
	border-radius: 15px 15px 15px 15px;
    }
    #workspaces {
	background-color: @accent;
	border-radius: 0px 0px 0px 0px;
	padding-right: 5px;
    }
    #workspaces button {
        color: @base;
	padding-left: 9px;
	padding-right: 9px;
    }
    #workspaces button.urgent {
        background-color: @accent;
	color: @yellow;
    }
    #workspaces button.active {
        color: @base;
        background-color: @accent;
    }
    #workspaces button:hover {
        background-color: @accent;
	color: @base;
	box-shadow: none;
        text-shadow: none;
    }

    #tray, #pulseaudio, #network, #cpu, #memory, #disk, #clock, #battery, #backlight, #custom-launcher, #cava, #bluetooth, #mpris    {
        color: @accent;
	background-color: @base;
	padding-left: 9px;
	padding-right: 9px;
    }

    #cava {
    }

    #cpu {
    }

    #memory {
    }

    #disk {
    }

    #tray {
      background: none;
    }

    #pulseaudio {
    }

    #network {
    }

    #clock {
      border-radius: 0px 15px 15px 0px
    }

    #battery {
      border-radius: 15px 0px 0px 15px;
    }

    #disk {
      border-radius: 0px 15px 15px 0px;
      padding-right: 14px;
    }

    #custom-launcher {
      font-size: 20px;
      font-weight: bold;
      padding-right: 9px;
      border-radius: 15px 0px 0px 15px;
    }
  '';
}
