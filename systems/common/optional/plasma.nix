{ outputs, ... }:

{
  services.xserver.enable = true;
  services.desktopManager.plasma6.enable = true;

  environment.systemPackages = with outputs.pkgs.kdePackages; [
    sddm-kcm
    plasma-browser-integration
  ];
}
