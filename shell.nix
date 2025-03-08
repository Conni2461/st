{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    pkg-config
    xorg.libX11
    xorg.libXft
    harfbuzz
  ];
}
