self: super: {
  ttrack = super.callPackage ./pkgs/ttrack { };
  todors = super.callPackage ./pkgs/todors { };
  puppet-editor-services = super.callPackage ./pkgs/puppet-editor-services { };
}
