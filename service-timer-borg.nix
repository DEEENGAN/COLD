# Name of the timer is borgbackup-job-nixos.timer
# jobs is an option
# services.SERVICE.jobs.hostname
# ssh://r4z77b5m@r4z77b5m.repo.borgbase.com/./repo

{

  services.borgbackup.jobs.nixos = {
    
    repo = "/run/media/deeengan/50de347c-e577-467c-93a4-e3e843a8e8f8/nixos-2023";
    environment.BORG_REPO = "/run/media/deeengan/50de347c-e577-467c-93a4-e3e843a8e8f8/nixos-2023";
    environment.BORG_CACHE_DIR = "/home/deeengan/.cache/borg";

    encryption.mode = "repokey-blake2";
    encryption.passCommand = "cat /home/deeengan/DATA/borg-pass";

    prune.keep.within = "1d";
    prune.keep.daily = 7;
    prune.keep.weekly = 7;
    prune.keep.monthly = 7;
    
    environment.compact = "/run/media/deeengan/50de347c-e577-467c-93a4-e3e843a8e8f8/nixos-2023";

    paths = ["/home" "/etc" "/root" "/var"];
    exclude = ["home/*/.cache/*" "home/*/.var/*" "var/tmp/*" "var/cache/*" "/nix"];
    compression = "auto,zstd";
    startAt = "00,08,16:00";
    environment.randomizeddelaysec = "300";
    environment.persistent = "true";

  };

}


