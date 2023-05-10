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
	./service-timer-git-all-repeat.nix
	./service-timer-borg-de7d193c-88eb-4aa4-92d8-34f0d8054d00.nix
      ];
    };
  };
}
