{ ... }:
{
  programs.wofi = {
    enable = true;
    settings = {
      width = 700;
      height = 600;
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
      columns = 2;
    };
    style =
      ''
      * {
        font-family: CaskaydiaCove Nerd Font
      }

      window {
	border-radius: 0px;
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
