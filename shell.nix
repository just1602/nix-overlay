{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nixd
    pkgs.nix-init
    pkgs.nurl
  ];
}
