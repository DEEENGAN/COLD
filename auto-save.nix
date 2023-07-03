{ ... }: {

  programs.nixvim.plugins.auto-save = { 
    enable = true;

      executionMessage = {
        cleaningInterval = 0;
        dim = 0.01;
        message = "";

    }; 
  };
}
