{ pkgs ? import <nixpkgs> { } }:

let
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive)
      academicons
      carlito
      enumitem
      environ
      etoolbox
      fontawesome5
      fontspec
      koma-script
      luatexbase
      metalogo
      pgf
      scheme-basic
      silence
      tcolorbox
      tikzfill;
  };
in

pkgs.mkShell {
  nativeBuildInputs = [ tex ];
}
