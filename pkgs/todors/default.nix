{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "todors";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = "todors";
    rev = "v${version}";
    hash = "sha256-/qTaeZMpHtQ8pJO+4/iqXpG1FM2teIKltiCSW/pdwEM=";
  };

  cargoHash = "sha256-M46PhFW4mQ4oKxYBVO8VTk7un7PjLsyFpsknGH8GNyM=";

  meta = {
    description = "Todors";
    homepage = "https://github.com/just1602/todors";
    license = lib.licenses.gpl3Only;
    mainProgram = "todors";
  };
}
