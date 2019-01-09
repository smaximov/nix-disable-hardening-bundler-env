{ pkgs ? import <nixpkgs> {}
}:

let
  gems = pkgs.bundlerEnv {
    name = "app-gems";
    gemdir = ./.;

    gemConfig = pkgs.defaultGemConfig // {
      digest-sha3 = attrs: {
        hardeningDisable = [ "format" ];
      };
    };
  };
in pkgs.mkShell {
  buildInputs = with pkgs; [
    ruby
    gems
    bundix
  ];
}
