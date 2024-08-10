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
    rev = "210a7a2a09a9b49d227fc181fc7ee0358eb88551";
    hash = "sha256-9BVZlh1SQ53yh0RgqmfYMlYoHu1IG09QAEDk55HInJs=";
  };

  cargoHash = "sha256-rs4XswUH5gV64iUmfZgtP0uCkA+5qFS3ZBrTVy5zqNc=";

  meta = with lib; {
    description = "A small CLI time tracker";
    homepage = "https://github.com/just1602/ttrack";
    license = licenses.gpl3Only;
    mainProgram = "ttrack";
  };
}
