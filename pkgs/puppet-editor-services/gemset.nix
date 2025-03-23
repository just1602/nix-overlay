{
  hiera-eyaml = {
    dependencies = ["highline" "optimist"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1czl3wbc5gg7vc6k3s48zslx69jilh736qgr935q27c6nhdyg1cj";
      type = "gem";
    };
    version = "4.2.0";
  };
  highline = {
    dependencies = ["reline"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jmvyhjp2v3iq47la7w6psrxbprnbnmzz0hxxski3vzn356x7jv7";
      type = "gem";
    };
    version = "3.1.2";
  };
  io-console = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18pgvl7lfjpichdfh1g50rpz0zpaqrpr52ybn9liv1v9pjn9ysnd";
      type = "gem";
    };
    version = "0.8.0";
  };
  molinillo = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0p846facmh1j5xmbrpgzadflspvk7bzs3sykrh5s7qi4cdqz5gzg";
      type = "gem";
    };
    version = "0.8.0";
  };
  optimist = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kp3f8g7g7cbw5vfkmpdv71pphhpcxk3lpc892mj9apkd7ys1y4c";
      type = "gem";
    };
    version = "3.2.1";
  };
  puppet-editor-services = {
    dependencies = ["hiera-eyaml" "molinillo" "puppet-lint" "puppet-strings" "puppetfile-resolver" "yard"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kjah54y2byyqcvcc9vsn2r3kpvbk6qldrg45m5knv9yrypxlhir";
      type = "gem";
    };
    version = "2.0.4";
  };
  puppet-lint = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lbr7smgx3k48zxrsp4kkkpwfgr6q2mjyz0bz5r14j0in5j5j3xa";
      type = "gem";
    };
    version = "4.3.0";
  };
  puppet-strings = {
    dependencies = ["rgen" "yard"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0zcs25xxkfymks4knilryfpr8k0v7z3nazdm61v7a1x4rxhs7sxp";
      type = "gem";
    };
    version = "4.1.2";
  };
  puppetfile-resolver = {
    dependencies = ["molinillo" "semantic_puppet"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kil8sbrl9c34ygrgm35893zygr4j6fjvfhbs4rs0b5n3cjrainm";
      type = "gem";
    };
    version = "0.6.3";
  };
  reline = {
    dependencies = ["io-console"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lirwlw59apc8m1wjk85y2xidiv0fkxjn6f7p84yqmmyvish6qjp";
      type = "gem";
    };
    version = "0.6.0";
  };
  rgen = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wgk4brd1v63ivdh5nnlkynfxk8m7bac9q50ydgq3d50hx4ghy6r";
      type = "gem";
    };
    version = "0.10.2";
  };
  semantic_puppet = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15ksbizvakfx0zfdgjbh34hqnrnkjj47m4kbnsg58mpqsx45pzqm";
      type = "gem";
    };
    version = "1.1.1";
  };
  yard = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14k9lb9a60r9z2zcqg08by9iljrrgjxdkbd91gw17rkqkqwi1sd6";
      type = "gem";
    };
    version = "0.9.37";
  };
}
