{ outputs, ... }:

{
  environment.systemPackages = with outputs.pkgs; [
    # hello
  ];
}
