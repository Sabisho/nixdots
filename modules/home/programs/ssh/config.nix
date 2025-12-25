{
  programs.ssh = {
    enableDefaultConfig = false;
    matchBlocks = {
      "*".addKeysToAgent = "yes";
      "github.com".identityFile = "~/.ssh/id_ed25519";
    };
  };
}
