{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.nixd
    pkgs.nix-init
    pkgs.nurl
    pkgs.nixfmt-rfc-style
  ];
}
