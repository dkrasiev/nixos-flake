{ inputs, ... }:

{
  networking.hostName = "nixos-work-pc";
  system.stateVersion = "24.11";

  imports = [
    inputs.hardware.nixosModules.common-pc
    inputs.hardware.nixosModules.common-pc-ssd
    inputs.hardware.nixosModules.common-cpu-intel

    ../common/global

    ../common/optional/sddm.nix
    ../common/optional/plasma.nix

    ../common/optional/bluetooth.nix
    ../common/optional/amnezia-vpn.nix
    ../common/optional/docker.nix
    ../common/optional/firewall.nix
    ../common/optional/fonts.nix
    ../common/optional/packages.nix
    ../common/optional/samba.nix
    ../common/optional/openssh.nix
    ../common/optional/kdeconnect.nix
    ../common/optional/virtualbox.nix
    # ../common/optional/wireless.nix
    ../common/optional/zsh.nix
    ../common/optional/zram.nix

    ../common/users/dkrasiev.nix

    ./hardware-configuration.nix
    ./modules/syncthing.nix
    ./modules/firewall.nix
  ];
}

