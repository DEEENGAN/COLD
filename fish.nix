{ pkgs, ... }: {

  programs.fish.enable = true;
  programs.fish.shellInit = ''
       echo "TO DO"
       grep --color=always -E "ATTN|MINUTES|READ|TRANSFER|WORK" ~/PITH/to-do.dea
    '';
  programs.fish.interactiveShellInit = ''
       set fish_greeting ""
       set fish_save_history yes
       bind \ch backward-char
       bind \cl forward-char
       bind \cb backward-word
       bind \ce forward-word
       bind \ck history-search-backward
       bind \cj history-search-forward
    '';
  programs.fish.loginShellInit = ''
    '';
  programs.fish.functions = {
     readme = ''
     chpwd
         if test -e .readme
             echo
             bat .readme
             echo
         end
  '';
};
  programs.fish.shellAliases = {
     ls = "ls --color=always";
     grep = "grep --color=always";
     cdn = "cd ~/.config/nvim/";
     gta = "sh ~/DATA/git-all";
     wttr = "sh ~/DATA/wttr";
  };

  programs.fish.shellAbbrs = {
    "." = "cd -";
    ".." = "cd ../";
    "..." = "cd ../../";

  };
}
