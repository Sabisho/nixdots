{
  programs.ssh = {
    addKeysToAgent = "yes";

    matchBlocks."github.com" = {
      identityFile = "~/.ssh/id_ed25519";
    };
  };
}
