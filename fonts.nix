{ pkgs, ... }: {
  #fonts.fontconfig.enable = true;
  #fonts.fontDir.enable = true;
  #fonts.fontconfig.useEmbeddedBitmaps = true;
  #fonts.enableDefaultFonts = true;
  fonts.fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      source-code-pro
      source-han-mono
      source-han-sans
      source-han-serif
      
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" "Hack" "FantasqueSansMono" "Hasklig" ]; })

  ];
}
