{ pkgs ? import <nixpkgs> {}
}:

pkgs.mkShell {
  buildInputs = [ pkgs.bundix ];

  hardeningDisable = [ "format" ];
}
