{ ... }: {
  
  programs.nixvim.plugins.telescope = {
    enable = true;
    defaults.file_ignore_patterns = [ "^.git/" ];
  
  };
}
