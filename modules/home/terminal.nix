{ config, pkgs, lib, inputs, ...}: 
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;
    font.name = "CaskaydiaCove Nerd Font";
    settings = {
      confirm_os_window_close = 0;
      background_opacity = "0.5";  
      enable_audio_bell = false;
    };
  };
  programs.fish = {
    enable = true;
    shellInit = "fastfetch";
    interactiveShellInit = ''
      set -U fish_greeting # Disable greeting
    '';
  };
  programs.starship = {
    enable = true;
  };
  programs.cava = {
    enable = true;  
  };
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        type = "kitty-direct";
    	source = "~/fastfetch.png";
	height = 4;
      };
      display = {
        separator = " ›  ";
      };
      modules = [
        "break"
	"title"
	{
            type= "kernel";
            key= "kernel";
            keyColor= "33";
        }
	{
            type= "cpu";
            key= "cpu   ";
            keyColor= "33"; 
        }
	{
	    type= "gpu";
	    key= "gpu   ";
	    keyColor= "33";
	}
        {
	    type= "memory";
	    key= "memory";
	    keyColor= "33";
	}
        {
            type= "packages";
            format= "{all} (nix)";
            key= "pkgs  ";
            keyColor= "33";  
        }
	{
	    type= "wm";
	    key= "wm    ";
	    keyColor= "33";
	}
        "break"
      ];
    };
  };
  programs.btop = {
    enable = true;
  };
  home.packages = (with pkgs; [ nvtopPackages.amd ]);
}
