{ outputs, ... }:

{
  environment.systemPackages = with outputs.pkgs; [
    amneziawg-tools
    amneziawg-go
  ];
}
