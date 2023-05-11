{
  
  description = "moonshine, sunshine, and the shine of my suffering";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
  };
  outputs = { nixpkgs, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
	    ./hardware-configuration.nix
	    ./users.nix
        ./gnome.nix
        ./fonts.nix
        ./sound.nix
      ];
    };
  };
}
