{
  programs.nixvim = {
    plugins = {
      snacks = {
        enable = true;
        settings = {
          bigfile = {
            enabled = true;
          };
          dashboard = {
            enabled = true;
            sections = [
              {section = "header";}
              {
                section = "keys";
                gap = 1;
                padding = 1;
              }
            ];
            preset = {
              header = ''                                                                                   
                      ████ ██████           █████      ██                    
                     ███████████             █████                            
                     █████████ ███████████████████ ███   ███████████  
                    █████████  ███    █████████████ █████ ██████████████  
                   █████████ ██████████ █████████ █████ █████ ████ █████  
                 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
                ██████  █████████████████████ ████ █████ █████ ████ ██████'';

              keys = [
                {
                  icon = "󰱼";
                  key = "f";
                  desc = "Find File";
                  action = ":lua Snacks.picker.files()";
                }
                {
                  icon = "󰝒";
                  key = "n";
                  desc = "New File";
                  action = ":ene | startinsert";
                }
                {
                  icon = "";
                  key = "g";
                  desc = "Find Text";
                  action = ":lua Snacks.picker.grep()";
                }
                {
                  icon = "󰙰";
                  key = "r";
                  desc = "Recent Files";
                  action = ":lua Snacks.picker.recent()";
                }
                {
                  icon = "";
                  key = "c";
                  desc = "Config";
                  action = ":lua Snacks.picker.files({ cwd = vim.fn.expand('~/nixdots')})";
                }
                {
                  icon = "󰦛";
                  key = "s";
                  desc = "Restore Session";
                  section = "session";
                }
                {
                  icon = "";
                  key = "q";
                  desc = "Quit";
                  action = ":qa";
                }
              ];
            };
          };
          explorer = {
            enabled = true;
          };
          indent = {
            enabled = true;
          };
          input = {
            enabled = true;
          };
          notifier = {
            enabled = true;
            timeout = 3000;
          };
          picker = {
            enabled = true;
          };
          quickfile = {
            enabled = true;
          };
          scope = {
            enabled = true;
          };
          scroll = {
            enabled = true;
          };
          statuscolumn = {
            enabled = true;
          };
          words = {
            enabled = true;
          };
          styles = {
            notification = {
              # wo.wrap = true;  # Uncomment to wrap notifications
            };
          };
        };
      };
    };
  };
}
