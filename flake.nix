{
  
  description = "moonshine, sunshine, and the shine of my suffering";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
      	./configuration.nix
	./hardware-configuration.nix
	./users.nix
	./timer-service-git-all-repeat.nix
      ];
    };
  };
}
