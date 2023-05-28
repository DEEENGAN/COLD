{
  description = "moonshine, sunshine, and the shine of my suffering";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
  inputs.home-manager.url = "github:nix-community/home-manager/release-22.11";
  inputs.home-manager.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { nixpkgs, home-manager, ... }: {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./time.nix
	          ./hardware-configuration.nix
	          ./users.nix
            ./gnome.nix
            #./gnome-theme.nix
            ./fonts.nix
            ./sound.nix
            #./service-timer-borg.nix
            ./nix-garbage-collect.nix

            home-manager.nixosModules.home-manager
              {
                home-manager.useGlobalPkgs = true;
                home-manager.useUserPackages = true;
                home-manager.users.deeengan = import ./home.nix;

        }
      ];
    };
  };
}
