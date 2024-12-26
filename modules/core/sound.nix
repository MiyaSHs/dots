{ pkgs, ... }: 
{
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    wireplumber.enable = true;
  };
  environment.systemPackages = [ pkgs.pulseaudio ]; ## needed to use pactl (you need pactl for VR audio streaming in alvr)
}
