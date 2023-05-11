{ pkgs }: {


  services.borgbackup.jobs.nixos = {

    environment.BORG_REPO = /run/media/deeengan/de7d193c-88eb-4aa4-92d8-34f0d8054d00/Archive-May-2023;
    environment.BORG_PASSPHRASE = pass -c = /archive/de7d193c-88eb-4aa4-92d8-34f0d8054d00;
    paths = ["/home" "/etc" "/root" "/var"];
    exclude = ["home/*/.cache/*" "var/tmp/*"];
    encryption.mode = "repokey";
    compression = "auto,zstd";
    startAt = "daily";
    prune.keep.within = "1d";
    prune.keep.daily = 7;
    prune.keep.weekly = 4;
    prune.keep.monthly = -1;




  };
}


