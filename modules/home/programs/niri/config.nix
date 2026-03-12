{
  xdg.configFile."niri/config.kdl".text = ''
    include "noctalia.kdl"
    input {
        keyboard {
            xkb {
                layout "us"
                options "caps:escape"
            }
            numlock
        }
        mouse {
            accel-profile "flat"
        }
        touchpad {
            tap
            natural-scroll
            accel-profile "adaptive"
        }
        focus-follows-mouse
    }
    output "eDP-1" {
        mode "1920x1080@60"
        scale 1
        transform "normal"
        position x=0 y=0
    }
    gestures {
        hot-corners {
            off
        }
    }
    layout {
        gaps 10
        center-focused-column "never"
        preset-column-widths {
            proportion 0.33333
            proportion 0.5
            proportion 0.66667
            proportion 1.0
        }
        preset-window-heights {
            proportion 0.33333
            proportion 0.5
            proportion 0.66667
            proportion 1.0
        }
        default-column-width {
            proportion 0.5
        }
        struts {
            left 0
            right 0
            top 0
            bottom 0
        }
        background-color "transparent"
    }
    // startup processes
    spawn-at-startup "noctalia-shell"
    spawn-at-startup "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
    // spawn-at-startup "cliphist" "wipe"
    layer-rule {
        match namespace="^swww-daemon$"
        place-within-backdrop true
    }
    layer-rule {
        match namespace="^noctalia-wallpaper*"
        place-within-backdrop true
    }
    window-rule {
        // open-maximized true
        geometry-corner-radius 20
        clip-to-geometry true
    }
    window-rule {
        match app-id="firefox"
        match app-id="zen-beta"
        match app-id="gimp"
        match app-id="com.mitchellh.ghostty"
        match app-id="kitty"
        match app-id="dev.zed.Zed"
        default-column-width {
            proportion 1.0
        }
        // open-maximized true
    }
    window-rule {
        match app-id="org.gnome.Calculator"
        match app-id="steam"
        match app-id="Alacritty"
        match app-id="org.pulseaudio.pavucontrol"
        match app-id="waypaper"
        match app-id="thunar"
        match app-id="org.gnome.FileRoller"
        match title="File Operation Progress"
        open-floating true
        shadow {
            on
            softness 50
            spread 8
            offset x=0 y=8
            color "#00000090"
        }
    }
    binds {
        // Applications
        Mod+Return {
            spawn "ghostty"
        }
        Mod+Space {
            spawn-sh "noctalia-shell ipc call launcher toggle"
        }
        Alt+I {
            spawn "zen"
        }
        Alt+E {
            spawn "thunar"
        }
        Mod+C {
            spawn-sh "noctalia-shell ipc call launcher clipboard"
        }
        Mod+Backspace {
            spawn-sh "noctalia-shell ipc call sessionMenu toggle"
        }
        // Backlight and Audio
        XF86MonBrightnessUp allow-when-locked=true {
            spawn "noctalia-shell" "ipc" "call" "brightness" "increase"
        }
        XF86MonBrightnessDown allow-when-locked=true {
            spawn "noctalia-shell" "ipc" "call" "brightness" "decrease"
        }
        XF86AudioRaiseVolume allow-when-locked=true {
            spawn "noctalia-shell" "ipc" "call" "volume" "increase"
        }
        XF86AudioLowerVolume allow-when-locked=true {
            spawn "noctalia-shell" "ipc" "call" "volume" "decrease"
        }
        XF86AudioMute allow-when-locked=true {
            spawn "noctalia-shell" "ipc" "call" "volume" "muteOutput"
        }
        XF86AudioPlay allow-when-locked=true {
            spawn "playerctl" "play-pause"
        }
        XF86AudioPause allow-when-locked=true {
            spawn "playerctl" "pause"
        }
        XF86AudioNext allow-when-locked=true {
            spawn "playerctl" "next"
        }
        XF86AudioPrev allow-when-locked=true {
            spawn "playerctl" "previous"
        }
        // Windows and Columns
        Mod+Q {
            close-window
        }
        Mod+W {
            switch-preset-column-width
        }
        Mod+T {
            toggle-window-floating
        }
        Mod+M {
            maximize-column
        }
        Mod+Ctrl+M {
            maximize-window-to-edges
        }
        Mod+F {
            fullscreen-window
        }
        Mod+H {
            focus-column-left
        }
        Mod+L {
            focus-column-right
        }
        Mod+J {
            focus-window-or-workspace-down
        }
        Mod+K {
            focus-window-or-workspace-up
        }
        Mod+Shift+H {
            move-column-left
        }
        Mod+Shift+L {
            move-column-right
        }
        Mod+Ctrl+H {
            set-column-width "-10%"
        }
        Mod+Ctrl+L {
            set-column-width "+10%"
        }
        Mod+Ctrl+K {
            set-window-height "+10%"
        }
        Mod+Ctrl+J {
            set-window-height "-10%"
        }
        Mod+BracketLeft {
            consume-or-expel-window-left
        }
        Mod+BracketRight {
            consume-or-expel-window-right
        }
        Mod+Comma {
            consume-window-into-column
        }
        Mod+Period {
            expel-window-from-column
        }
        Alt+Tab repeat=false {
            spawn "pkill" "-USR1" "niriswitcher"
        }
        Mod+Shift+J {
            move-column-to-workspace-down
        }
        Mod+Shift+K {
            move-column-to-workspace-up
        }
        Mod+O {
            toggle-overview
        }
        Print {
            screenshot
        }
        Ctrl+Print {
            screenshot-window
        }
        Shift+Print {
            screenshot-screen
        }
    }
    // misc configuration
    screenshot-path "~/Pictures/Screenshots/Screenshot From %Y-%m-%d %H-%M-%S.png"
    prefer-no-csd
    hotkey-overlay {
        skip-at-startup
    }
    cursor {
        hide-when-typing
        hide-after-inactive-ms 1000
    }
    environment {
        // Java GUI Apps Fix
        "_JAVA_AWT_WM_NONREPARENTING" "1"
        "JAVA_ENABLE_WAYLAND" "1"
    }
    overview {
        workspace-shadow {
        softness 60
        spread 15
        offset x=0 y=15
        color "#00000070"
        }
    }
    debug {
        // Allows notification actions and window activation from Noctalia.
        honor-xdg-activation-with-invalid-serial
    }
  '';
}
