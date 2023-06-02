{ ... }: {

                # files
                    programs.nixvim.options.filetype = "on";
                    programs.nixvim.options.spelllang = "en_us,de_de,cjk";
                    programs.nixvim.options.spell = true;
                    programs.nixvim.options.autoread = true;
                      
                      # ftplugin, custom files
                          programs.nixvim.files."ftdetect/deeengan.lua".autoCmd = [
                      {
                            event = [ "BufRead" "BufNewFile" ];
                            pattern = [ "*.dea" ];
                            command = "set ft=deeengan";
                  }
                ];

                  # undo
                      programs.nixvim.options.undofile = false;

                  # swap
                      programs.nixvim.options.swapfile = false;

                  # backup
                      programs.nixvim.options.backup = true;
                      programs.nixvim.options.backupdir = "/home/deeengan/.cache/nvim-backups/";
                      programs.nixvim.options.backupcopy = "yes";
                      programs.nixvim.options.writebackup = true;

}