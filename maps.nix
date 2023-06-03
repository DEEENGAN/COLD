{ ... }: {

                # keys, spacebar for " "
                    programs.nixvim.globals.mapleader = " ";
                    programs.nixvim.globals.maplocalleader = " ";

                # basic
                    programs.nixvim.maps.normal."<leader><leader>" = "<CMD>:bn<CR>";
                    programs.nixvim.maps.normal."<leader>bp" = "<CMD>:bp<CR>";
                    programs.nixvim.maps.normal."<leader>bd" = "<CMD>:bd<CR>";
                    programs.nixvim.maps.normal."<leader>c" = "g<C-g>";
                    programs.nixvim.maps.normal."<leader>dt" = "<CMD>:UndotreeToggle<CR>";
                    programs.nixvim.maps.normal."<leader>wa" = "<CMD>:wa<CR>";
                    programs.nixvim.maps.normal."<leader>wq" = "<CMD>:wq<CR>";
                    programs.nixvim.maps.normal."ww" = "<CMD>:w<CR>";

                # Telescope commands
                    programs.nixvim.maps.normal."<leader>tb" = "<CMD>Telescope buffers<CR>";
                    programs.nixvim.maps.normal."<leader>tc" = "<CMD>Telescope find_files search_dirs=~/.config/<CR>";
                    programs.nixvim.maps.normal."<leader>tf" = "<CMD>Telescope find_files search_dirs=~/<CR>";
                    programs.nixvim.maps.normal."<leader>tg" = "<CMD>Telescope live_grep search_dirs=~/<CR>";

                # formatting
                    programs.nixvim.maps.normal."<leader>dx" = ":!pandoc -s commonmark % --output ~/.docx";
                    programs.nixvim.maps.normal."<leader>ra" = ":%s/'/’/gc";
                    programs.nixvim.maps.normal."<leader>sm" = ":%!pandoc --to=commonmark-smart";

                # git
                    programs.nixvim.maps.normal."<leader>gl" = "<CMD>:G pull origin main<CR>";
                    programs.nixvim.maps.normal."<leader>ga" = "<CMD>:G add --all<CR>";
                    programs.nixvim.maps.normal."<leader>gc" = "<CMD>:G commit<CR>";
                    programs.nixvim.maps.normal."<leader>gh" = "<CMD>:G push origin main<CR>";
                    programs.nixvim.maps.normal."<leader>gs" = "<CMD>:G status<CR>";

                # formatting && publishing
                    programs.nixvim.maps.visual."<leader>tb" = ":'<,'>!pandoc -t commonmark_x<CR>";

                # git
                    programs.nixvim.maps.insert."<bc" = "BREAKING CHANGE:";
                    programs.nixvim.maps.insert."<rf" ="refactor():";
                    programs.nixvim.maps.insert."<fx" = "fix():";
                    programs.nixvim.maps.insert."<f" = "feat():";
                    
                # fiction
                    programs.nixvim.maps.insert."!!" = "ATTN:";

                # language
                    programs.nixvim.maps.insert."s|" = "ß";
                    programs.nixvim.maps.insert."S|" = "ẞ";
                    programs.nixvim.maps.insert."a|" = "ä";
                    programs.nixvim.maps.insert."A|" = "Ä";
                    programs.nixvim.maps.insert."o|" = "ö";
                    programs.nixvim.maps.insert."O|" = "Ö";
                    programs.nixvim.maps.insert."u|" = "ü";
                    programs.nixvim.maps.insert."U|" = "Ü";
                    programs.nixvim.maps.insert.",," = "„";
                    programs.nixvim.maps.insert.",|" = "“";
}
