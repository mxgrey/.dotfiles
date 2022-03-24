# Defined in - @ line 1
function dotfiles --wraps='/usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME' --description 'alias config /usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME'
  /usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME $argv;
end
