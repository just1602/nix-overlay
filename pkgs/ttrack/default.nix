{
  lib,
  rustPlatform,
  fetchFromGitHub,
  installShellFiles,
}:

rustPlatform.buildRustPackage rec {
  pname = "ttrack";
  version = "0.3.0";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-Fz6rKCD3ysKbO5XAVg47VEYeQ5zOa4CfcFAX6+zRIqs=";
  };

  cargoHash = "sha256-bhNEQNS4Tn6hFtklqD4sqdfzU90ssFhRcG2MyKFCknc=";

  nativeBuildInputs = [ installShellFiles ];

  postInstall = ''
    installShellCompletion --bash "dist/ttrack.bash" --zsh "dist/_ttrack" --fish "dist/ttrack.fish"
  '';

  meta = with lib; {
    description = "A small CLI time tracker";
    homepage = "https://github.com/just1602/ttrack";
    license = licenses.gpl3Only;
    mainProgram = "ttrack";
  };
}
