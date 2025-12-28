{inputs, ...}: {
  imports = [
    inputs.zen-browser.homeModules.default # or .twilight for twilight version
  ];
  programs.zen-browser = {
    enable = true;
    policies = {
      DisableAppUpdate = true;
      DisableTelemetry = true;
      DisablePocket = true;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      HttpsOnlyMode = "force_enabled";
      #   DNSOverHTTPS = {
      #   Enabled = true;
      #   ProviderURL = "https://dns.quad9.net/dns-query";  # Privacy-focused DNS
      #   Locked = false;
      # };
    };
  };
}
