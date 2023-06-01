{

  description = "moonshine, sunshine, and the shine of my suffering";

    inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
    inputs.home-manager.url = "github:nix-community/home-manager/release-23.05";
    inputs.home-manager.inputs.nixpkgs.follows = "nixpkgs";
    inputs.nixvim.url = "github:pta2002/nixvim";
    inputs.nixvim.inputs.nixpkgs.follows = "nixpkgs";

      outputs = { nixpkgs, home-manager, nixvim, ... }: {
          nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              modules = [ ./time.nix
	      		              ./config.nix
                          ./hardware-configuration.nix
                          ./users.nix
                          ./fonts.nix
                          ./sound.nix
                          ./service-timer-nix-garbage-collect.nix
                          #./service-timer-borg.nix

                              home-manager.nixosModules.home-manager
                                {
                                  home-manager.useGlobalPkgs = true;
                                  home-manager.useUserPackages = true;
                                  home-manager.users.deeengan = { imports = [ nixvim.homeManagerModules.nixvim ./home.nix ]; };

        }
      ];
    };
  };
}
