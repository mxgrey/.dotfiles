Dotfiles Repo. Used to sync system configurations across multiple machines and remind me how to easily get a new system set up to my liking.

# How to do a fresh setup

### Installing the regular config files
[(Original Reference)](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)

```bash
git clone --bare https://github.com/mxgrey/.dotfiles $HOME/.dotfiles
```

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

```bash
dotfiles config --local status.showUntrackedFiles no
```

```bash
dotfiles checkout
```

### Installing gnome-terminal settings

```bash
cat ~/dotfiles/gterminal.preferences | dconf load /org/gnome/terminal/
```

To save this setting in the future use

```bash
dconf dump /org/gnome/terminal/ > ~/dotfiles/gterminal.preferences
```

```bash
dotfiles commit -sam "Update gterminal preferences"
```

```bash
dotfiles push origin main
```

### Setting up keys

Set up [ssh keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) and [gpg keys](https://docs.github.com/en/authentication/managing-commit-signature-verification).

Add `signingkey` field to `user` section of `.gitconfig`, e.g.:

```
[user]
	email = grey@openrobotics.org
	name = Michael X. Grey
	signingkey = A67E0623A5E76D6C #gitignore
```

Use `#gitignore` to avoid committing this key.
Committing the key is not a security hazard, but every computer has its own value so committing them would make version control painful.

### Other things to install

#### Fish

```bash
sudo apt-add-repository ppa:fish-shell/release-3
```

```bash
sudo apt-get install fish
```

#### starship (to install or update):

```bash
curl -sS https://starship.rs/install.sh | sh
```

#### vscode

[Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
