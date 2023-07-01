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
      };
    };

        # session = { 

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
                ____  ___)           )   ___                       
    /)         (, /   /  ,  /) /)   (__/_____)                     
_/_(/    _       /---/     // //      /       ___   __  _/_ __     
(__/ )__(/_   ) /   (___(_(/_(/_     /       (_)(_(_/ (_(__/ (_(_/_
             (_/                    (______)                  .-/  
                                                             (_/   
          ";
      };
        
        
    };
  };
}

