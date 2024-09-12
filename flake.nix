{
  inputs = {
    # NixOS official package source, using the nixos-unstable branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, catppuccin, home-manager, chaotic, ... }@inputs:
  let
    username = "miya";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in
  {
    nixosConfigurations = {
      desktop = lib.nixosSystem {
        inherit system;
        specialArgs = { host="${username}"; inherit inputs username; };
        modules = [ 
	  (import ./main)
     	  catppuccin.nixosModules.catppuccin
          home-manager.nixosModules.home-manager
	  chaotic.nixosModules.default
          {
            home-manager = {
	      useGlobalPkgs = true;
              useUserPackages = true;
	      extraSpecialArgs = { inherit inputs; };
              users.${username} = {
	        imports = [
                  ./modules/home
                  catppuccin.homeManagerModules.catppuccin
                ];
		home.username = "${username}";
		home.homeDirectory = "/home/${username}";
                home.stateVersion = "24.11";
              };
            };
          }
	];
      };
    };
  };
}
