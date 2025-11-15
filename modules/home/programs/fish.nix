{
  programs.fish = {
    enable = true;

    # Disable the default greeting
    interactiveShellInit = ''
      set fish_greeting ""
    '';

    shellAliases = {
      typ = "ttyper";
      ngc = "sudo nix-collect-garbage -d";
      nrs = "sudo nixos-rebuild switch --flake";
      nrb = "sudo nixos-rebuild boot --flake";
      hmv = "echo $(SHELL)";
      h = "hx";
      v = "nvim";
      dotsup = "chezmoi re-add";
      dotspull = "chezmoi update";
      mpc = "rmpc";
      prop = "hyprctl clients | grep -i 'class\\|title\\|xwayland'";
      ls = "eza --icons=always";
      ff = "fastfetch";
      la = "eza --icons=always -a";
      lla = "eza --icons=always -la";
      lt = "eza --icons=always -la --tree";
      ytm = "yt-dlp -x --embed-metadata";
      wlp = "swww img";
    };

    functions = {
      # Yazi integration function
      y = ''
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
      '';
    };
  };

  # Set PATH - add ~/.local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];

  # Set environment variables
  home.sessionVariables = {
    BAT_THEME = "gruvbox-dark";
  };

  # Enable integrations for starship, zoxide, and atuin
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.atuin = {
    enable = true;
    enableFishIntegration = true;
  };
}
