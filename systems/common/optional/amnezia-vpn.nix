{ outputs, ... }:

let
  pkgs = outputs.pkgs-unstable;
in
{
  # NOTE: copy from https://github.com/NixOS/nixpkgs/blob/nixos-unstable/nixos/modules/programs/amnezia-vpn.nix
  environment.systemPackages = [ pkgs.amnezia-vpn ];
  services.dbus.packages = [ pkgs.amnezia-vpn ];
  services.resolved.enable = true;
  systemd = {
    packages = [ pkgs.amnezia-vpn ];
    services."AmneziaVPN".wantedBy = [ "multi-user.target" ];
  };
}
