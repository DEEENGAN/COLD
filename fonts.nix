{ config, pkgs, ... }: {
  fonts.fontconfig.enable = true;
  fonts.fontDir.enable = true;
  #fonts.fontconfig.defaultFonts.emoji = [ "Twitter Color Emoji" ];
  #fonts.fontconfig.useEmbeddedBitmaps = true;
  fonts.fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      source-code-pro
      source-han-mono
      source-han-sans
      source-han-serif
      wqy_zenhei
      
    #(nerdfonts.override { fonts = [ "Hack" "FantasqueSansMono" "Hasklig" ]; })

  ];
}
