{ ... }: {

   programs.nixvim.plugins.telescope.enable = true;
   programs.nixvim.plugins.telescope.defaults.file_ignore_patterns = [ "^.git/" ];

      # Telescope
          programs.nixvim.maps.normal."<leader>tb" = "<CMD>Telescope buffers<CR>";
          programs.nixvim.maps.normal."<leader>tc" = "<CMD>Telescope find_files search_dirs=~/.config/<CR>";
          programs.nixvim.maps.normal."<leader>tf" = "<CMD>Telescope find_files search_dirs=~/<CR>";
          programs.nixvim.maps.normal."<leader>tg" = "<CMD>Telescope live_grep search_dirs=~/<CR>";
          programs.nixvim.maps.normal."<leader>to" = "<CMD>Telescope oldfiles<CR>";
          programs.nixvim.maps.normal."<leader>sp" = "<CMD>Telescope spell_suggest<CR>";

}
