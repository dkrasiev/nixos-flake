{ inputs, ... }:

{
  networking.hostName = "b550mpro";
  system.stateVersion = "24.11";

  imports = [
    ../common/global

    ../common/optional/sddm.nix
    ../common/optional/plasma.nix

    ../common/optional/docker.nix
    ../common/optional/fonts.nix
    ../common/optional/packages.nix
    ../common/optional/amneziawg.nix
    ../common/optional/zsh.nix

    inputs.hardware.nixosModules.common-pc
    inputs.hardware.nixosModules.common-pc-ssd
    inputs.hardware.nixosModules.common-cpu-amd
    inputs.hardware.nixosModules.common-gpu-amd

    ../common/users/dkrasiev.nix

    ./hardware-configuration.nix
  ];
}

