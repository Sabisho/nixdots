{
  config,
  pkgs,
  inputs,
  username,
  hostname,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./modules/gaming.nix
    # ./modules/git.nix # Use Home Manager for these kinds of stuff
    ./modules/bluetooth.nix
    ./modules/nvidia.nix
    # ./modules/hyprland.nix
    ./modules/razer.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 0;
    };
    plymouth = {
      enable = true;
      theme = "bgrt";
    };
    consoleLogLevel = 3;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "udev.log_priority=3"
      "rd.systemd.show_status=auto"
    ];
    blacklistedKernelModules = ["nouveau"];
  };

  networking.hostName = hostname; # Define your hostname.
  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.${username} = {
    isNormalUser = true;
    description = "Klynt";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.fish;
    home = "/home/${username}";
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Laptop Power Management
  services.thermald.enable = true;

  services.auto-cpufreq = {
    enable = true;
    settings = {
      battery = {
        governor = "powersave";
        turbo = "never";
      };
      charger = {
        governor = "performance";
        turbo = "auto";
      };
    };
  };

  programs.niri.enable = true;

  services.displayManager.gdm.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
  };

  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    git
    cava
    swayimg
    brightnessctl
    wget
    fastfetch
    helix
    fd
    zoxide
    bat
    atuin
    starship
    yazi
    mpv
    papers
    fuzzel
    ghostty
    swww
    waypaper
    nwg-look
    kdePackages.qt6ct
    libsForQt5.qt5ct
    nautilus
    gnome-themes-extra
    papirus-icon-theme
    polkit_gnome
    gpu-screen-recorder
    nixd
    mako
    libnotify
    rmpc
    mission-center
    apple-cursor
    kdlfmt
    wl-clipboard
    hyprlock
    yt-dlp
    eza
    distrobox
    alejandra
    qbittorrent
    waybar
    gimp3
    newsraft
    inputs.zen-browser.packages."${system}".default
    picard
    ripgrep
    meld
    xwayland-satellite
    gnome-disk-utility
    rewaita
  ];

  services.xserver.videoDrivers = ["nvidia"];
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      # For modern Intel CPU's
      intel-media-driver # Enable Hardware Acceleration
      vpl-gpu-rt # Enable QSV
    ];
  };
  environment.sessionVariables = {LIBVA_DRIVER_NAME = "iHD";};

  fonts.packages = with pkgs; [
    adwaita-fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    liberation_ttf
    nerd-fonts.jetbrains-mono
    corefonts
    vista-fonts
  ];

  services.gvfs.enable = true;

  services.gnome.gnome-keyring.enable = true;
  # MPD
  services.mpd = {
    enable = true;
    musicDirectory = "/home/${username}/Music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';
    user = "${username}";
    # Optional:
    network.listenAddress = "any"; # if you want to allow non-localhost connections
    startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
  };
  systemd.services.mpd.environment = {
    # https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/609
    XDG_RUNTIME_DIR = "/run/user/1000"; # User-id 1000 must match above user. MPD will look inside this directory for the PipeWire socket.
  };

  # Virtualization
  programs.virt-manager.enable = true;

  virtualisation.libvirtd.enable = true;

  users.groups.libvirtd.members = ["${username}"];

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 3d";
  };

  networking.firewall.enable = true;

  system.stateVersion = "25.05"; # Did you read the comment?
}
