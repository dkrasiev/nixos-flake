{
   nixpkgs.config.allowUnfree = true;
   users.extraGroups.vboxusers.members = [ "dkrasiev" ];

   virtualisation.virtualbox.host.enable = true;
   virtualisation.virtualbox.host.enableExtensionPack = true;
}
