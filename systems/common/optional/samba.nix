{
  services.samba = {
    enable = true;
    openFirewall = true;
    settings = {
      "public" = {
        "path" = "/home/dkrasiev/Public";
        "browseable" = "yes";
        "read only" = "no";
        "create mask" = "0644";
        "directory mask" = "0755";
      };
    };
  };

  services.samba-wsdd = {
    enable = true;
    openFirewall = true;
  };
}
