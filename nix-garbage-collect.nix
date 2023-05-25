{ config, ... }: {

# so, = "true"; and = true; are different -- the first throws up a "is not boolean" error, second does not
#  A definition for option `nix.gc.persistent' is not of type `boolean'.

nix.gc.automatic = true;
nix.gc.randomizedDelaySec = "400";
nix.gc.persistent = true;
nix.gc.options = "--delete-older-than 90d";
nix.gc.dates = "Mon 04:30:00";

}
