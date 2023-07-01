{ ... }: {

  programs.nixvim.plugins.telescope = {
    enable = true;
    defaults.file_ignore_patterns = [ "^.git/" ];

      extensions.media_files = {
        enable = true;
        filetypes = [ "png" "webp" "jpg" "jpeg" ];

    };
  };
}
