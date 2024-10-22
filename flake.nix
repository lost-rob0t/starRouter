{
  description = "Star intel event router thing";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {


    devShell.x86_64-linux =
      pkgs.mkShell {
        buildInputs = with pkgs; [
          nim
          nimble
        ];
        shellHook = ''

              export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath([pkgs.zeromq])}
            '';
      };
  };
}
