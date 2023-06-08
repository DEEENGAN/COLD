{ ... }: {

   programs.nixvim.plugins.telescope.enable = true;
   programs.nixvim.plugins.telescope.defaults.file_ignore_patterns = [ "^.git/" ];

}
