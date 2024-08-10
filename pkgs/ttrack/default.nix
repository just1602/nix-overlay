{ lib
, rustPlatform
, fetchFromGitHub
}:

rustPlatform.buildRustPackage {
  pname = "ttrack";
  version = "HEAD-2024-08-10";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = "ttrack";
    rev = "v0.1.0";
    hash = "sha256-gISMP/Ykvn1v8xf6mDpU3P++mduY/cpdoWsiU3aGIXA=";
  };

  cargoHash = "sha256-rs4XswUH5gV64iUmfZgtP0uCkA+5qFS3ZBrTVy5zqNc=";

  meta = with lib; {
    description = "A small CLI time tracker";
    homepage = "https://github.com/just1602/ttrack";
    license = licenses.gpl3Only;
    mainProgram = "ttrack";
  };
}
