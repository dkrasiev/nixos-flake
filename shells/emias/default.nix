{ inputs, outputs, ... }:

let
  nixpkgs-20-09 = outputs.pkgs.fetchFromGitHub {
    owner = "nixos";
    repo = "nixpkgs";
    rev = "nixos-20.09";
    hash = "sha256-tAMJnUwfaDEB2aa31jGcu7R7bzGELM9noc91L2PbVjg=";
  };
  pkgs-20-09 = import nixpkgs-20-09 { inherit (inputs.nixpkgs) hostPlatform; };
in outputs.pkgs.mkShell {
  packages = [
    outputs.pkgs.jdk8
    outputs.pkgs.maven

    pkgs-20-09.nodejs-14_x
  ];
}
