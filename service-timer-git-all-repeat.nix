{ pkgs, ... }: {

systemd.services.git-all-repeat = {
  serviceConfig.Type = "oneshot";
  path = with pkgs; [ bash git ];
  script = ''
    bash /home/deeengan/DATA/git-all
  '';
};

systemd.timers.git-all-repeat = {
  wantedBy = [ "timers.target" ];
  partOf = [ "git-all-repeat.service" ];
  timerConfig = {
    OnCalendar = "*-*-* 4:30:00";
    Unit = "git-all-repeat.service";
  };
};

}



