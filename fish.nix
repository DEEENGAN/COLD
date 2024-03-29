{ ... }: {

  programs.fish.enable = true;
  programs.fish.shellInit = ''
       echo "TO DO"
       echo -e '\033[1;33m'"Entering the\033[0m \033[1;35mHill Country . . . "'\033[0m' &&
       grep --color=always -E "ATTN|MINUTES|READ|TRANSFER|WORK" ~/PITH/8TK2EM6Q.md
       readme
    '';
  programs.fish.interactiveShellInit = ''
       set fish_greeting ""
       set fish_save_history yes
       set -x ZK_NOTEBOOK_DIR ~/PITH/
       set -x EDITOR nvim
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
      char = '' function char
        grep -EIho '#LTT|#BER|#JCD|#RSP|#HSP|#OBV' ~/PITH/N5L5G6WB.md | sort -r | uniq -c
      end
  '';

      dots = '' function dots
        cp -r ~/.local/share/sioyek/ ~/PITH/MAT86EB3/
        cp -r ~/.config/nvim/syntax/ ~/PITH/MAT86EB3/
        cp -r ~/.config/nvim/spell/ ~/PITH/MAT86EB3/
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
     lsd = "ls -d -a */";
     grep = "grep --color=always";
     cdn = "cd ~/.config/nvim/";
     gta = "sh ~/DATA/git-all";
     wttr = "sh ~/DATA/wttr";
  };

  programs.fish.shellAbbrs = {
    "." = "cd -";
    ".." = "cd ../";
    "..." = "cd ../../";
    "p" = "cd ~/PITH/";
    "c" = "cd ~/COLD/";
    "ff" = "ffmpeg -i input.webm output.mp4";
    "yt" = "yt-dlp --format mp4 [video URL]";

  };
}
