# Switch your remote URL to SSH:
  `git remote set-url origin git@github.com:username/repository.git`

# Steps to setup new ssh with this home manager config applied.
  1. Create you ssh keys with `ssh-keygen -t ed25519 -C "your_email@example.com"`.
  2. Now copy your public key with `bat ~/.ssh/id_ed25519.pub`.
  3. Add them to the github ssh keys settings.

# To test if it works run:
  `ssh -T git@github.com`.
