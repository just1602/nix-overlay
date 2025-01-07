{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.nixd
    pkgs.nix-init
    pkgs.nurl
    pkgs.nixfmt-rfc-style
    pkgs.just
    pkgs.ruby
    pkgs.bundix
  ];
}
