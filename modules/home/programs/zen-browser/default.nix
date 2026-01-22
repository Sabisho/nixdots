{
  inputs,
  username,
  ...
}: {
  imports = [
    inputs.zen-browser.homeModules.default # or .twilight for twilight version
  ];
  programs.zen-browser = {
    enable = true;
    profiles."${username}".settings = {
      "zen.view.compact.enable-at-startup" = true;
      "zen.view.experimental-no-window-controls" = true;
      "zen.theme.content-element-separation" = 0;
    };
    policies = {
      DisableAppUpdate = true;
      DisableTelemetry = true;
      DisablePocket = true;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      HttpsOnlyMode = "force_enabled";
      DNSOverHTTPS = {
        Enabled = true;
        ProviderURL = "https://cloudflare-dns.com/dns-query"; # Privacy-focused DNS
        Locked = true;
      };
    };
  };
}
