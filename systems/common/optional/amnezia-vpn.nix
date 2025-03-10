{ outputs, ... }:

{
  environment.systemPackages = [
    outputs.pkgs-unstable.amnezia-vpn
    outputs.pkgs-unstable.amneziawg-tools
    outputs.pkgs-unstable.amneziawg-go
  ];
}
