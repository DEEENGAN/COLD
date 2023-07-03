{ ... }: {

  programs.nixvim.plugins.mini = {

      modules = {

        sessions = {
          autoread = false;
          autowrite = true;
          directory = "~/PITH/";
          file = "N6949URA.vim";
          force = { read = false; write = true; delete = false; };
          verbose = { read = false; write = true; delete = true; };
    };




    };
  };
}

