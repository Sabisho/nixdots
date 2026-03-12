{lib, ...}: {
  programs.helix = {
    settings = {
      theme = "noctalia-transparent";
      # theme = lib.mkForce "stylix-transparent"; # The lib.mkForce gives the priority to this option over the option set by Stylix.

      editor = {
        rainbow-brackets = true;
        line-number = "relative";
        mouse = false;
        color-modes = true;
        bufferline = "multiple";
        popup-border = "all";
        cursorline = true;
        end-of-line-diagnostics = "hint";

        indent-guides = {
          render = true;
        };

        lsp = {
          display-inlay-hints = true;
        };

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        statusline = {
          left = ["mode" "file-name" "file-modification-indicator"];
          center = ["spinner" "file-type"];
          right = ["diagnostics" "selections" "position" "file-encoding" "file-line-ending"];
          separator = "│";

          mode = {
            normal = "NORMAL";
            insert = "INSERT";
            select = "SELECT";
          };
        };

        file-picker = {
          hidden = false;
        };

        inline-diagnostics = {
          cursor-line = "warning";
        };
      };

      keys = {
        insert = {
          "C-[" = "normal_mode";
        };

        normal = {
          ret = "goto_word";
          space = {
            n = ":open ~/nixdots/";
          };
        };
      };
    };

    themes = {
      noctalia-transparent = {
        inherits = "noctalia";
        "ui.background" = {};
        "ui.popup" = {};
        "ui.completion" = {};
        "ui.menu" = {};
        "ui.help" = {};
      };

      gruvbox-transparent = {
        inherits = "gruvbox_dark_hard";
        "ui.background" = {};
        "ui.popup" = {};
        "ui.completion" = {};
        "ui.menu" = {};
        "ui.help" = {};
      };
    };
  };
}
