{inputs, ...}: {
  # NOTE: Add flake input for noctalia from github to access these features.
  imports = [
    inputs.noctalia.homeModules.default
  ];

  services.cliphist.enable = true;

  # configure options
  programs.noctalia-shell = {
    enable = true;
  };

  xdg.configFile."noctalia" = {
    source = ./config;
    recursive = true;
  };
}
