{ outputs, ... }:

{
  fonts.packages = with outputs.pkgs; [ nerd-fonts.jetbrains-mono ];
}
