{ pkgs, inputs, username, host, ...}:
{
  programs.fish.enable = true;
  users.users.root.shell = pkgs.fish;
  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [ "wheel" ];
    shell = pkgs.fish;
  };
  nix.settings.trusted-users = [ "${username}" ];
}
