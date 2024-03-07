{ ... }: {

  programs.nixvim.plugins.telescope = {
    enable = true;
    defaults.file_ignore_patterns = [ "^.git/" ];
    
    extraOptions = {
        defaults.layout_strategy = "vertical";
      };

      extensions.media_files = {
        enable = true;
        filetypes = [ "png" "webp" "jpg" "jpeg" ];

    };

      extensions.file_browser = {
        enable = true;
        addDirs = true;
        hijackNetrw = true;
        useFd = true;
    };

      extensions.fzf-native = {
        enable = true;

    };
  };
}
