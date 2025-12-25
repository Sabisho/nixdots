{
  imports = [
    ./config.nix
  ];

  programs.ssh = {
    enable = true;
  };

  services.ssh-agent.enable = true;
}
