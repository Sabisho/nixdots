{
  # Thermald is only for Intel CPUs.
  services = {
    thermald.enable = true;
    upower.enable = true;
    power-profiles-daemon.enable = true;
  };

  # services.auto-cpufreq = {
  #   enable = true;
  #   settings = {
  #     battery = {
  #       governor = "powersave";
  #       turbo = "never";
  #     };
  #     charger = {
  #       governor = "performance";
  #       turbo = "auto";
  #     };
  #   };
  # };

  # services.tlp = {
  #   enable = true;
  # };
}
