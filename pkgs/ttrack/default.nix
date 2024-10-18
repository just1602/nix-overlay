{
  lib,
  rustPlatform,
  fetchFromGitHub,
  installShellFiles,
}:

rustPlatform.buildRustPackage rec {
  pname = "ttrack";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-UxX0qYHTuYQG/LD7CuvTM6A5yARYRY/qOC4+IccSnvY=";
  };

  cargoHash = "sha256-81pq37FJAS32UpImAfvdT8E8dgFNbAxSTTzW8kCmxn8=";

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
