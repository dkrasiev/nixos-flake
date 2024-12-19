{ outputs, ... }:

{
  fonts.packages = with outputs.pkgs; [ (nerdfonts.override { fonts = [ "JetBrainsMono" ]; }) ];
}
