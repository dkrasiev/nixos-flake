{
  services = {
    syncthing = {
      enable = true;
      user = "dkrasiev";
      dataDir = "/home/dkrasiev";
      configDir = "/home/dkrasiev/.config/syncthing";
      overrideDevices = true;
      overrideFolders = true;
      settings = {
        gui = {
          user = "root";
          password = "root";
        };

        devices = {
          "phone" = { id = "ZXKR363-Y32NEBB-3TW5SAN-IIORSEA-JPSLHP5-OOHCIPW-JFVN4J4-RWM3PAK"; };
          "macbook" = { id = "FQ74OEB-2O3FQYT-UBS7KXC-JQBGNOM-55HFAHZ-OA36VNH-KC3FRBK-XTAU7QL"; };
          # TODO: add id
          "work-pc" = { id = ""; };
        };

        folders = {
          "Sync" = {
            path = "/home/dkrasiev/Documents/Sync";
            devices = [ "phone" "macbook" "work-pc" ];
          };
        };
      };
    };
  };

  networking.firewall.allowedTCPPorts = [ 8384 22000 ];
  networking.firewall.allowedUDPPorts = [ 22000 21027 ];
}
