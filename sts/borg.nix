# Name of the timer is borgbackup-job-nixos.timer
# jobs is an option
# services.SERVICE.jobs.hostname
# ssh://r4z77b5m@r4z77b5m.repo.borgbase.com/./repo
# services.borgbackup.jobs.<name>.inhibitsSleep

{

  services.borgbackup.jobs.nixos = {

    inhibitsSleep = true;

    environment = {
      BORG_CACHE_DIR = "/home/deeengan/.cache/borg";
      BORG_REPO = "/run/media/deeengan/Samsung\ USB/nixos-2023";
      compact = "/run/media/deeengan/50de347c-e577-467c-93a4-e3e843a8e8f8/nixos-2023";
      persistent = "true";
      randomizeddelaysec = "600";
};

    repo = "/run/media/deeengan/Samsung\ USB/archive";

    encryption = {
      mode = "repokey-blake2";
      passCommand = "cat /home/deeengan/DATA/borg-pass";
  };

    prune.keep = {
      within = "1d";
      daily = 7;
      weekly = 7;
      monthly = 7;
  };

    paths = [
      "/home/PITH/"
      "/home/COLD/"
      "/home/LKIT/"
      "/home/LOVE/"
      "/home/SITE/"
      "/home/DATA/"
      "/home/SITE/"
      "/home/.password-store/"
  ];

    exclude = [
      "/home/*/.cache/*"
      "/home/Downloads/"
      "/home/Pictures/"
      "/home/*/.var/*"
      "/bin/*"
      "/boot/*"
      "/dev/*"
      "/etc/*"
      "/lost+found/*"
      "/nix/*"
      "/proc/*"
      "/root/*"
      "/run/*"
      "/srv/*"
      "/sys/*"
      "/tmp/*"
      "/usr/*"
      "/var/*"
  ];

    compression = "auto,zstd";
    startAt = "00,16:00";

  };
}


