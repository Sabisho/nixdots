{
  programs.fuzzel = {
    settings = {
      main = {
        layer = "overlay";
        font = "Inter:size=12"; # Stylix: Remove this when using stylix theming.
        icon-theme = "Papirus-Dark";
      };
      # Also comment out all the color settings when using stylix
      colors = {
        background = "282828bf";
        text = "ebdbb2ff";
        match = "fb4934ff";
        selection = "458588ff";
        selection-text = "ebdbb2ff";
        selection-match = "fb4934ff";
        border = "eeeeecff";
      };
    };
  };
  xdg.configFile.fuzzel = {
    source = ./scripts;
    recursive = true;
  };
}
