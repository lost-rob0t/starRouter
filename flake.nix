{
  description = "StarIntel event router consuming the StarLang-generated document contract";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    starintel-doc.url = "github:lost-rob0t/starintel-doc.nim/0ba29aaa6fd0260a11d9d3a55067057ab4bdd6bc";
    starintel-doc.inputs.nixpkgs.follows = "nixpkgs";
    zmq = { url = "github:nim-lang/nim-zmq/a56af54f599337a8f5d4934fcff7554c74f77854"; flake = false; };
    jsony = { url = "github:treeform/jsony/bb647e1ca21af25ffdc423bcb96feeeeae963ca2"; flake = false; };
    ulid = { url = "github:adelq/ulid/fddb400e8f6c006badd8e2956f40490aa9ffb4db"; flake = false; };
    random = { url = "github:oprypin/nim-random/881019662b584c43f2ef5158ff346bf6b6b29f88"; flake = false; };
    cligen = { url = "github:c-blake/cligen/bdce5ed5ae8b222321945648b30c39fbc2bed272"; flake = false; };
  };
  outputs = { self, nixpkgs, starintel-doc, zmq, ulid, random, cligen, jsony }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      python = pkgs.python3.withPackages (ps: [ ps.pyzmq ]);
      paths = "--noNimblePath --path:src --path:${starintel-doc}/share/nimble/starintel_doc/src --path:${zmq} --path:${ulid}/src --path:${random}/src --path:${cligen} --path:${jsony}/src";
      libraries = pkgs.lib.makeLibraryPath [ pkgs.zeromq pkgs.pcre ];
      router = pkgs.stdenv.mkDerivation {
        pname = "starRouter";
        version = "0.3.1";
        src = self;
        nativeBuildInputs = [ pkgs.nim pkgs.makeWrapper python ];
        buildPhase = ''
          nim c -d:release ${paths} --nimcache:"$TMPDIR/nimcache" --out:starRouter src/starRouter.nim
        '';
        doCheck = true;
        doInstallCheck = true;
        checkPhase = ''
          python3 scripts/sync-starintel-schema.py --offline
          python3 scripts/check-runtime-release.py ${starintel-doc}
          export LD_LIBRARY_PATH=${libraries}
          nim c -r ${paths} --nimcache:"$TMPDIR/nimcache-tests" --out:test-wire tests/test_wire.nim
          nim c ${paths} --nimcache:"$TMPDIR/nimcache-client" --out:test-client tests/client_wire.nim
          python3 tests/broker_wire.py "$PWD/starRouter" "$PWD/test-client"
          nim c -d:useStarIntel -d:useJsony ${paths} --nimcache:"$TMPDIR/nimcache-client-jsony" --out:test-client-jsony tests/client_wire.nim
          python3 tests/broker_wire.py "$PWD/starRouter" "$PWD/test-client-jsony"
        '';
        installPhase = ''
          mkdir -p "$out/bin"
          install -m755 starRouter "$out/bin/starRouter"
          wrapProgram "$out/bin/starRouter" --prefix LD_LIBRARY_PATH : ${libraries}
        '';
        installCheckPhase = ''
          export LD_LIBRARY_PATH=${libraries}
          python3 tests/broker_wire.py "$out/bin/starRouter" "$PWD/test-client"
        '';
      };
    in {
      packages.${system}.default = router;
      checks.${system}.default = router;
      devShells.${system}.default = pkgs.mkShell {
        packages = [ pkgs.nim pkgs.nimble python ];
        LD_LIBRARY_PATH = libraries;
      };
    };
}
