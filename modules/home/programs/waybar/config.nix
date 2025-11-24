{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      margin-top = 5;
      height = 40;
      width = 1910;
      spacing = 20;
      reload_style_on_change = true;

      modules-left = [
        "cpu"
        "memory"
        "temperature"
        "battery"
        "hyprland/window"
        "niri/window"
      ];

      modules-center = [
        "hyprland/workspaces"
        "niri/workspaces"
      ];

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
