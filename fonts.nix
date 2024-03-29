{ pkgs, ... }: {
  #fonts.fontconfig.enable = true;
  #fonts.fontDir.enable = true;
  #fonts.fontconfig.useEmbeddedBitmaps = true;
  fonts.enableDefaultPackages = false;
  fonts.packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      source-code-pro
      source-han-mono
      source-han-sans
      source-han-serif
      twitter-color-emoji
      corefonts
        (nerdfonts.override { fonts = [ "FiraCode" "NerdFontsSymbolsOnly" "Hack" "FantasqueSansMono" "Hasklig" ]; })

  ];
}
