{ ... }: {

                # formatting
                    programs.nixvim.maps.normal."<leader>dx" = ":!pandoc -s commonmark % --output ~/.docx";
                    programs.nixvim.maps.normal."<leader>ra" = ":%s/'/’/gc";
                    programs.nixvim.maps.normal."<leader>sm" = ":%!pandoc --to=commonmark-smart";
                    programs.nixvim.maps.normal."<leader>nt" = "<CMD>Notifications<CR>";

                # formatting && publishing
                    programs.nixvim.maps.visual."<leader>tb" = ":'<,'>!pandoc -t commonmark_x<CR>";

                # git
                    programs.nixvim.maps.insert."<bc" = "BREAKING CHANGE:";
                    programs.nixvim.maps.insert."<rf" ="refactor():";
                    programs.nixvim.maps.insert."<x" = "fix():";
                    programs.nixvim.maps.insert."<f" = "feat():";

                # expand
                    programs.nixvim.maps.insert."!!" = "ATTN:";
                    programs.nixvim.maps.insert."!lk" = "[link](https://)";

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
