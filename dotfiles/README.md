Dotfiles Repo

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
