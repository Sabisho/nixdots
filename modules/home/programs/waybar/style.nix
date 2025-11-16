{config, ...}: let
  colors = config.waybar.colors;
in {
  programs.waybar.style = ''
    * {
      font-family: "JetBrainsMono Nerd Font Propo";
      font-size: 18px;
    }

    window#waybar {
      background: rgba(0, 0, 0, 0.7);
      color: ${colors.teal};
      border-radius: 7rem;
      border-width: 2px;
      border-style: solid;
      border-color: ${colors.teal};
    }

    window#waybar.empty #window {
      background-color: transparent;
      padding: 0px;
      border: 0px;
    }

    /* ===== LEFT MODULES ===== */
    #custom-logo {
      margin-left: 5px;
      padding: 0 10px;
      background-color: transparent;
      border-radius: 7rem;
    }

    #custom-logo:hover {
      background-color: ${colors.maroon};
      color: ${colors.base};
    }

    #cpu,
    #memory,
    #temperature,
    #battery {
      background-color: transparent;
      padding: 0 10px;
      border-radius: 7rem;
    }

    #cpu:hover,
    #memory:hover,
    #temperature:hover,
    #battery:hover {
      background-color: ${colors.maroon};
      color: ${colors.base};
    }

    #window {
      border-radius: 7rem;
      padding: 0 10px;
      background-color: transparent;
      color: ${colors.teal};
      margin-left: 5px;
      margin-right: 5px;
    }

    #window:hover {
      background-color: ${colors.maroon};
      color: ${colors.base};
    }

    /* ===== CENTER MODULES ===== */
    #workspaces {
      border-radius: 7rem;
      background-color: transparent;
    }

    #workspaces button {
      color: ${colors.teal};
      border-radius: 7rem;
    }

    #workspaces button.active {
      color: ${colors.base};
      background-color: ${colors.teal};
      border-radius: 7rem;
    }

    #workspaces button:hover {
      color: ${colors.base};
      background-color: ${colors.maroon};
      border-radius: 7rem;
    }

    /* ===== RIGHT MODULES ===== */
    #tray,
    #idle_inhibitor,
    #network,
    #pulseaudio,
    #backlight,
    #bluetooth,
    #clock {
      background-color: transparent;
      padding: 0 10px;
      border-radius: 7rem;
    }

    #tray:hover,
    #idle_inhibitor:hover,
    #network:hover,
    #pulseaudio:hover,
    #backlight:hover,
    #bluetooth:hover,
    #clock:hover {
      background-color: ${colors.maroon};
      color: ${colors.base};
    }

    #custom-power {
      margin-right: 5px;
      padding: 0 10px;
      background-color: transparent;
      border-radius: 7rem;
    }

    #custom-power:hover {
      background-color: ${colors.maroon};
      color: ${colors.base};
    }

    /* ===== SLIDER STYLING ===== */
    #pulseaudio-slider slider {
      min-width: 0px;
      min-height: 0px;
      opacity: 0;
      background-image: none;
      border: none;
      box-shadow: none;
    }

    #pulseaudio-slider trough {
      min-width: 80px;
      min-height: 5px;
      border-radius: 5px;
    }

    #pulseaudio-slider highlight {
      min-height: 10px;
      border-radius: 5px;
    }

    #backlight-slider slider {
      min-width: 0px;
      min-height: 0px;
      opacity: 0;
      background-image: none;
      border: none;
      box-shadow: none;
    }

    #backlight-slider trough {
      min-width: 80px;
      min-height: 10px;
      border-radius: 5px;
    }

    #backlight-slider highlight {
      min-width: 10px;
      border-radius: 5px;
    }
  '';
}
