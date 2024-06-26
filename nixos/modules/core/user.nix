{ pkgs, inputs, username, host, ...}:
{
  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };
  nix.settings.allowed-users = [ "${username}" ];
}
