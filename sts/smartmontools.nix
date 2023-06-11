{

  services.smartmontools.jobs.nixos = {

    environment.DEVICESCAN = "-s (S/../.././02|L/../../6/03)";
    startAt = "6:00";

  };

}

