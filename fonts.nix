{ config, pkgs, ... }: {

  fonts.fonts = with pkgs; [
	  noto-fonts
	  noto-fonts-extra
	  noto-fonts-cjk-sans
	  noto-fonts-cjk-serif
    source-han-sans
    source-han-serif
    noto-fonts-emoji
    (nerdfonts.override { fonts = [ "Hack" "FantasqueSansMono" "Hasklig" ]; })
	];

}
