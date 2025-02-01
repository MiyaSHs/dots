{ ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        layer = "overlay";
      };
    };
  };
  programs.wofi = {
    enable = true;
    settings = {
      width = 400;
      height = 500;
      location = "center";
      show = "drun";
      prompt = "Search...";
      allow_markup = true;
      no_actions = true;
      halign = "fill";
      orientation = "vertical";
      content_halign = "fill";
      insensitive = true;
      allow_images = true;
      image_size = 40;
      gtk_dark = true;
      columns = 1;
    };
    style =
      ''
      * {
        font-family: CaskaydiaCove Nerd Font
      }

      window {
	border-radius: 15px;
	border: 2px solid #f38ba8;
      }
      
      #input {
        margin: 7px;
	margin-bottom: 2px;
      }

      #scroll {
        margin: 7px;
	margin-top: 2px;
      }
      '';
  };
}
