{ config, ... }: {


nix.gc.randomizedDelaySec = "400";
nix.gc.persistent = "true";
nix.gc.options = "--delete-older-than 30d";
nix.gc.dates = "Mon 04:30:00";

}
