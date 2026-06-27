{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ pkgs.typst pkgs.hugo pkgs.just pkgs.roboto ];

  shellHook = ''
    export TYPST_FONT_PATHS="${pkgs.roboto}/share/fonts"
    echo "just dev    – build CV then start Hugo dev server"
    echo "just build  – build CV then build Hugo site"
    echo "just cv     – compile CV only"
  '';
}
