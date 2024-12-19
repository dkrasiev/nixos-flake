{ outputs, ... }:

{
  programs.zsh.enable = true;

  users.defaultUserShell = outputs.pkgs.zsh;
}
