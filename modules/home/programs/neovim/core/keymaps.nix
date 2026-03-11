{
  programs.nixvim = {
    keymaps = [
      {
        key = "<leader>q";
        mode = "n";
        action = ":q!<CR>";
      }
      {
        key = "<leader>f";
        mode = "n";
        action = "<cmd>lua Snacks.picker.files()<CR>";
        options = {
          silent = true;
          desc = "Find Files";
        };
      }
      {
        key = "<leader>e";
        mode = "n";
        action = "<cmd>lua Snacks.explorer()<CR>";
        options = {
          silent = true;
          desc = "File Explorer";
        };
      }
      {
        key = "<leader>b";
        mode = "n";
        action = "<cmd>lua Snacks.picker.buffers()<CR>";
        options = {
          silent = true;
          desc = "Find Buffers";
        };
      }
      {
        key = "<leader>/";
        mode = "n";
        action = "<cmd>lua Snacks.picker.grep()<CR>";
        options = {
          silent = true;
          desc = "Grep";
        };
      }
      {
        key = "<leader>r";
        mode = "n";
        action = "<cmd>lua Snacks.picker.recent()<CR>";
        options = {
          silent = true;
          desc = "Find Recent Files";
        };
      }
      {
        key = "<Tab>";
        mode = "n";
        action = ":bprev<CR>";
        options = {
          silent = true;
          desc = "Previous Buffer";
        };
      }
      {
        key = "<S-Tab>";
        mode = "n";
        action = ":bnext<CR>";
        options = {
          silent = true;
          desc = "Next Buffer";
        };
      }
      {
        key = "<leader>c";
        mode = "n";
        action = "<cmd>lua Snacks.picker.files({ cwd = vim.fn.expand('~/nixdots')})<CR>";
        options = {
          silent = true;
          desc = "Open NixOS Configs";
        };
      }
    ];
  };
}
