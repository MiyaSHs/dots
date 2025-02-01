{
  inputs = {
    # NixOS official package source, using the nixos-unstable branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    umu = {
      url = "github:Open-Wine-Components/umu-launcher?dir=packaging/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    nix-flatpak.url = "github:gmodena/nix-flatpak";
  };

  outputs = { self, nixpkgs, catppuccin, home-manager, chaotic, nix-flatpak, ... }@inputs:
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
		  chaotic.homeManagerModules.default
		  nix-flatpak.homeManagerModules.nix-flatpak
                ];
		home.username = "${username}";
		home.homeDirectory = "/home/${username}";
                home.stateVersion = "25.05";
              };
            };
          }
	];
      };
    };
  };
}
