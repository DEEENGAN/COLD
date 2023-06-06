{ ... }: {

  programs.fish.enable = true;
  programs.fish.shellInit = ''
       echo "TO DO"
       echo -e '\033[1;33m'"Entering the\033[0m \033[1;35mHill Country . . . "'\033[0m' &&
       grep --color=always -E "ATTN|MINUTES|READ|TRANSFER|WORK" ~/PITH/to-do.dea
       readme
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
      dots = '' function dots
        cp -r ~/.local/share/sioyek/ ~/DATA/
        cp -r ~/.config/nvim/syntax/ ~/DATA/nvim
      end
  '';

      readme = '' function chpwd --on-variable PWD
         if test -e .readme
             echo
             bat .readme
             echo
         end
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
