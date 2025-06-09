let port = 22;
in {
  services.openssh = {
    enable = true;
    ports = [ port ];
    settings = {
      PasswordAuthentication = true;
      # AllowUsers = null; # Allows all users by default. Can be [ "user1" "user2" ]
      # UseDns = true;
      X11Forwarding = true;
      PermitRootLogin =
        "prohibit-password"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
    };
  };

  networking.firewall.allowedTCPPorts = [ port ];
}
