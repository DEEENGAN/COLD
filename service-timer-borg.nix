# Name of the timer is borgbackup-job-nixos.timer
# jobs is an option
# services.SERVICE.jobs.hostname

{

  services.borgbackup.jobs.nixos = {
    
    repo = "/run/media/deeengan/de7d193c-88eb-4aa4-92d8-34f0d8054d00/Archive-May-2023";
    environment.BORG_REPO = "/run/media/deeengan/de7d193c-88eb-4aa4-92d8-34f0d8054d00/Archive-May-2023";
    environment.BORG_CACHE_DIR = "/home/deeengan/.cache/borg";

    encryption.mode = "repokey";
    encryption.passCommand = "cat /home/deeengan/DATA/borg-pass.dj";

    prune.keep.within = "1d";
    prune.keep.daily = 7;
    prune.keep.weekly = 7;
    prune.keep.monthly = 7;
    
    environment.compact = "/run/media/deeengan/de7d193c-88eb-4aa4-92d8-34f0d8054d00/Archive-May-2023";

    paths = ["/home" "/etc" "/root" "/var"];
    exclude = ["home/*/.cache/*" "var/tmp/*"];
    compression = "auto,zstd";
    startAt = "00,08,16:00";

  };

}


