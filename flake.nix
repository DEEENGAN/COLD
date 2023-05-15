{
  
  description = "moonshine, sunshine, and the shine of my suffering";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { nixpkgs, ... }: {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
          system = "flake-utils.lib.eachDefaultSystem";
          modules = [
            ./time.nix
	          ./hardware-configuration.nix
	          ./users.nix
            ./gnome.nix
            #./gnome-theme.nix
            ./fonts.nix
            ./sound.nix
            ./service-timer-borg.nix
            ./nix-garbage-collect.nix
           ];
        };
    };
}
