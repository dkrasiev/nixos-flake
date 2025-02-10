
{ outputs, ... }:

outputs.pkgs.mkShell {
  nativeBuildInputs = with outputs.pkgs; [
    vscode
    playwright-driver.browsers
  ];

  shellHook = ''
    export PLAYWRIGHT_BROWSERS_PATH=${outputs.pkgs.playwright-driver.browsers}
    export PLAYWRIGHT_SKIP_VALIDATE_HOST_REQUIREMENTS=true
  '';
}
