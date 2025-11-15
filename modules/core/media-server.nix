{
  pkgs,
  username,
  ...
}: {
  services.jellyfin = {
    enable = true;
    openFirewall = true;
    user = username;
  };
  environment.systemPackages = with pkgs; [
    mkvtoolnix
  ];
}
