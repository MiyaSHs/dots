{ pkgs, inputs, username, host, ...}:
{
  programs.fish.enable = true;
  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };
  nix.settings.allowed-users = [ "${username}" ];
}
