{ lib
, rustPlatform
, fetchFromGitHub
, installShellFiles
}:

rustPlatform.buildRustPackage {
  pname = "ttrack";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = "ttrack";
    rev = "v0.1.0";
    hash = "sha256-gISMP/Ykvn1v8xf6mDpU3P++mduY/cpdoWsiU3aGIXA=";
  };

  cargoHash = "sha256-tfacvXDugQMNLE0eRBBTmthTpYXvOYoV1o8gMRO+vkc=";

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
