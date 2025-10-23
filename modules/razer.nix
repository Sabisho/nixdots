{ pkgs, ... }: {
  hardware.openrazer.enable = true;
  hardware.openrazer.users = ["klynt"];
  environment.systemPackages = [
    pkgs.polychromatic
  ];
}
