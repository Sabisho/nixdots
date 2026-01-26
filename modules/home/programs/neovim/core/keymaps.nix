{
  programs.nixvim = {
    keymaps = [
      {
        key = "<leader>q";
        mode = "n";
        action = ":q!<CR>";
      }
      {
        key = "<leader>ff";
        mode = "n";
        action = "<cmd>lua Snacks.picker.files()<CR>";
        options = {
          silent = true;
          desc = "Files";
        };
      }
      {
        key = "<leader>fb";
        mode = "n";
        action = "<cmd>lua Snacks.picker.buffers()<CR>";
        options = {
          silent = true;
          desc = "Buffers";
        };
      }
      {
        key = "<leader>fg";
        mode = "n";
        action = "<cmd>lua Snacks.picker.grep()<CR>";
        options = {
          silent = true;
          desc = "Grep";
        };
      }
      {
        key = "<leader>fr";
        mode = "n";
        action = "<cmd>lua Snacks.picker.recent()<CR>";
        options = {
          silent = true;
          desc = "Recent";
        };
      }
    ];
  };
}
