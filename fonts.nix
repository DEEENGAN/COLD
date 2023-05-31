{ config, pkgs, ... }: {
  #fonts.fontconfig.enable = true;
  #fonts.fontconfig.defaultFonts.emoji = [ "Twitter Color Emoji" ];
  #fonts.fontconfig.useEmbeddedBitmaps = true;
  fonts.fonts = with pkgs; [
	  twitter-color-emoji
	  noto-fonts-cjk-sans
	  noto-fonts-cjk-serif
    source-han-sans
    source-han-serif
    (nerdfonts.override { fonts = [ "Hack" "FantasqueSansMono" "Hasklig" ]; })
	];

}
