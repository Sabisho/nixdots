{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      margin-top = 5;
      height = 34;
      width = 1910;
      spacing = 2;
      reload_style_on_change = true;

      modules-left = [
        "custom/logo"
        "cpu"
        "memory"
        "temperature"
        "battery"
        "niri/window"
      ];

      modules-center = ["niri/workspaces"];

      modules-right = [
        "tray"
        "idle_inhibitor"
        "network"
        "pulseaudio"
        "pulseaudio#microphone"
        "backlight"
        "bluetooth"
        "clock"
        "custom/power"
      ];
    };
  };
}
