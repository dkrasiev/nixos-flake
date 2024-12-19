{
  description = "dkrasiev's personal nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    hardware.url = "github:nixos/nixos-hardware";
  };

  outputs = inputs: let
    inherit (inputs.self) outputs;

    system = "x86_64-linux";

    nixos = system: inputs.nixpkgs.lib.nixosSystem { specialArgs = { inherit inputs outputs; }; modules = [ ./systems/${system} ]; };
    home = user: inputs.home-manager.lib.homeManagerConfiguration { specialArgs = { inherit inputs outputs; }; modules = [ ./users/${user} ]; };
    shell = name: import ./shells/${name} { inherit inputs outputs; };
  in {
    pkgs = import inputs.nixpkgs { inherit system; config.allowUnfree = true; };
    pkgs-unstable = import inputs.nixpkgs-unstable { inherit system; config.allowUnfree = true; };
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    nixosConfigurations.b550mpro = nixos "b550mpro";

    homeConfigurations."dkrasiev@b550mpro" = home "dkrasiev";

    devShells.${system} = {
      emias = shell "emias";
      prisma = shell "prisma";
    };
  };
}
