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
        font-size: 15px;
    }

    window#waybar {
        background-color: @accent;
	border-radius: 15px;
    }
    #workspaces {
	background-color: @crust;
	border-radius: 0px 0px 0px 0px;
    }
    #workspaces button {
        color: @accent;
	padding-left: 9px;
	padding-right: 9px;
    }
    #workspaces button.urgent {
        background-color: @yellow;
	color: @accent;
    }
    #workspaces button.active {
        color: @crust;
        background-color: @accent;
    }
    #workspaces button:hover {
        background-color: @crust;
	color: @accent;
	box-shadow: none;
        text-shadow: none;
    }

    #tray, #pulseaudio, #network, #cpu, #memory, #disk, #clock, #battery, #custom-launcher, #cava, #mpris    {
        color: @accent;
	background-color: @crust;
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
      border-radius: 0px 15px 15px 0px;
    }

    #custom-launcher {
      font-size: 20px;
      font-weight: bold;
      padding-right: 18px;
      border-radius: 15px 0px 0px 15px;
    }
  '';
}
