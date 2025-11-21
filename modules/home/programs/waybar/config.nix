{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      margin-top = 5;
      height = 40;
      width = 1910;
      spacing = 10;
      reload_style_on_change = true;

      modules-left = [
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
        "bluetooth"
        "pulseaudio"
        "pulseaudio#microphone"
        "backlight"
        "clock"
      ];
    };
  };
}
