{
  users.users.dkrasiev = {
    description = "Dmitry Krasiev";
    initialPassword = "15151515";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" ];
    isNormalUser = true;
    createHome = true;
  };
}
