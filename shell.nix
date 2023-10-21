{ pkgs ? import <nixpkgs> {} }:
let
  pythonWithPackages = pkgs.buildPackages.python3.withPackages (pkg: [
    pkg.jupyter
    pkg.matplotlib
  ]);
in
pkgs.mkShell {
  packages = with pkgs; [
    pythonWithPackages
  ];
}
