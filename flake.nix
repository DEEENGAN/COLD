{
  
  description = "moonshine, sunshine, and the shine of my suffering";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
  };

    outputs = { nixpkgs, ... }: {
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
                ./service-timer-borg.nix
            ];
        };
    };
}
