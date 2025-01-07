{
  bundlerApp,
  bundlerUpdateScript,
  lib,
  testers,
}:

bundlerApp {
  pname = "puppet-editor-services";
  gemdir = ./.;
  exes = [ "puppet-languageserver" ];

  passthru = {
    tests.version = testers.testVersion {
      package = "puppet-editor-services";
      command = "HOME=$(mktemp -d) puppet-languageserver --version";
      inherit ((import ./gemset.nix).puppet-editor-services) version;
    };
    updateScript = bundlerUpdateScript "puppet-editor-services";
  };

  meta = {
    description = "LSP server for the puppet automation framework";
    homepage = "https://github.com/puppetlabs/puppet-editor-services";
    changelog = "https://github.com/puppetlabs/puppet-editor-services/blob/main/CHANGELOG.md";
    license = lib.licenses.asl20;
    mainProgram = "puppet-languageserver";
  };
}
