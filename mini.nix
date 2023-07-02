{ ... }: {

  programs.nixvim.plugins.mini = {
    enable = true;

      modules = {
        cursorword = {
          delay = 0;
    };

        files = {
          windows = {
            preview = true;
            width_preview = 100;
      };
    };

        sessions = {
          autoread = false;
          autowrite = true;
          directory = "~/PITH/";
          file = "N6949URA.vim";
          force = { read = false; write = true; delete = false; };
          verbose = { read = false; write = true; delete = true; };
    };

        starter = {
          autoopen = true;
          header = "
 __       __)
(, )  |  /     /)
   | /| /  _  // _  ______    _    _/_ ___
   |/ |/ _(/_(/_(__(_) // (__(/_   (__(_)
   /  |
          ";

          footer = "
                ____  ___)           )   ___                                                 /
    /)         (, /   /  ,  /) /)   (__/_____)                                 /     /) /)  /
_/_(/    _       /---/     // //      /       ___   __  _/_ __                  _   // //  /
(__/ )__(/_   ) /   (___(_(/_(/_     /       (_)(_(_/ (_(__/ (_(_/_       (_/_ (_(_(/_(/_ o
             (_/                    (______)                  .-/   /    .-/
                                                             (_/        (_/
          ";
      };

        
    };
  };
}

