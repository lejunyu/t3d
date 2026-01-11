# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.docker
    pkgs.docker-compose
    pkgs.gcc
    pkgs.zip
    pkgs.gnumake
    pkgs.cmake
    pkgs.perl
    pkgs.inetutils
    pkgs.pkg-config
    pkgs.vcpkg
    pkgs.jsoncpp
    pkgs.drogon
  ];
  # Enable Docker
  services.docker = {
    enable = true;
  };
  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "vscjava.vscode-java-pack"
      "google.gemini-cli-vscode-ide-companion"
      "ms-vscode.makefile-tools"
    ];
  };
}
