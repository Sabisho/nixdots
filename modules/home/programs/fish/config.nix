{
  programs.fish = {
    # Disable the default greeting
    interactiveShellInit = ''
      set fish_greeting ""
      fish_vi_key_bindings
    '';

    shellAliases = {
      typ = "ttyper";
      tss = "freeze";
      nhc = "nh clean all --optimise --ask";
      nhs = "nh os switch --ask";
      nhb = "nh os boot --ask";
      h = "hx";
      v = "nvim";
      mpc = "rmpc";
      prop = "hyprctl clients | grep -i 'class\\|title\\|xwayland'";
      ls = "eza --icons=always";
      ff = "fastfetch";
      ffn = "fastfetch -c none";
      of = "onefetch";
      la = "eza --icons=always -a";
      lla = "eza --icons=always -la";
      lt = "eza --icons=always -la --tree";
      dfp = "cd ~/nixdots && jj desc && jj bookmark set main && jj new && jj git push --branch main; or echo 'Push cancelled'";
      isodd = "caligula burn";
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

      ytm = {
        description = "Youtube Music Downloader with embedded metadata";
        body = ''
          yt-dlp -x --embed-metadata $argv 2>| rg -i "error|warning|failed" | tee error.txt
        '';
      };
    };
  };

  # Set PATH - add ~/.local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}
