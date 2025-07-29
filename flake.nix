{
  description = "dkrasiev's personal nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    hardware.url = "github:nixos/nixos-hardware";
  };

  outputs = inputs:
    let
      inherit (inputs.self) outputs;

      system = "x86_64-linux";
      pkgs = import inputs.nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };

      nixos = system:
        inputs.nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs outputs; };
          modules = [ ./systems/${system} ];
        };
      home = user:
        inputs.home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs outputs; };
          modules = [ ./users/${user} ];
        };
      shell = name: import ./shells/${name} { inherit inputs outputs; };
    in {
      inherit system pkgs;

      nixosModules = import ./modules/nixos;
      homeManagerModules = import ./modules/home-manager;

      nixosConfigurations.b550mpro = nixos "b550mpro";
      nixosConfigurations.nixos-work-pc = nixos "work-pc";

      homeConfigurations."dkrasiev@b550mpro" = home "dkrasiev";

      devShells.${system} = {
        emias = shell "emias";
        prisma = shell "prisma";
        playwright = shell "playwright";
      };
    };
}
