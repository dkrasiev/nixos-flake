{ inputs, ... }:

{
  networking.hostName = "b550mpro";
  system.stateVersion = "24.11";

  imports = [
    inputs.hardware.nixosModules.common-pc
    inputs.hardware.nixosModules.common-pc-ssd
    inputs.hardware.nixosModules.common-cpu-amd
    inputs.hardware.nixosModules.common-gpu-amd

    ../common/global

    ../common/optional/sddm.nix
    ../common/optional/plasma.nix

    ../common/optional/amneziawg.nix
    ../common/optional/docker.nix
    ../common/optional/droidcam.nix
    ../common/optional/fonts.nix
    ../common/optional/packages.nix
    ../common/optional/samba.nix
    ../common/optional/zsh.nix

    ../common/users/dkrasiev.nix

    ./hardware-configuration.nix
  ];
}

