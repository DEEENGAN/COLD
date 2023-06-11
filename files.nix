{ ... }: {

  # files
      programs.nixvim.options = {
        filetype = "on";
        spelllang = "en_us,de_de,cjk";
        spell = false;
        autoread = true;
        completeopt = "preview";

          # backup
              backup = true;
              backupdir = "/home/deeengan/.cache/nvim-backups/";
              backupcopy = "yes";
              writebackup = true;

          # swap
              swapfile = false;

          # undo
              undofile = true;
              undodir = "/home/deeengan/.cache/undodir/";
              undolevels = 1000;
              undoreload = 10000;
        };

          # ftplugin, custom file
              programs.nixvim.files."ftdetect/deeengan.lua".autoCmd = [
          {
                event = [ "BufRead" "BufNewFile" ];
                pattern = [ "*.dea" ];
                command = "set ft=deeengan";
          }
        ];

              programs.nixvim.files."ftdetect/ink.lua".autoCmd = [
          {
                event = [ "BufRead" "BufNewFile" ];
                pattern = [ "*.ink" ];
                command = "set ft=ink";

    }
  ];
}
