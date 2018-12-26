{ pkgs ? import <nixpkgs> {}
}:

let
  hardeningDisable = [ "format" ];

  gems = pkgs.bundlerEnv {
    name = "app-gems";
    gemdir = ./.;

    # This doens't make any difference:
    # inherit hardeningDisable;
  };
in pkgs.mkShell {
  buildInputs = with pkgs; [
    ruby
    gems
    bundix
  ];

  inherit hardeningDisable;
}
