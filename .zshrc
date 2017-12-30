# Executes commands at the start of an interactive session.
# MAINTAINER "Jeremy Redd <jredd42@gmail.com"
# 0711.01

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# tmux
alias tma='tmux attach -d -t'
alias tmn='tmux new -s $(basename $(pwd)) -n $(hostname)'
alias tml='tmux list-sessions'
alias tmk='tmux kill-session -t'

# bower
alias bower='noglob bower'

# jdk
alias jdk7='export JAVA_HOME=`/usr/libexec/java_home -v 1.7`'

export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Peco
#if [[ -s "$HOME/Dev/github.com/linhmtran168/mac_dotfiles/peco.zsh" ]]; then
#  source "$HOME/Dev/github.com/linhmtran168/mac_dotfiles/peco.zsh"
#fi

# Autojump
#[[ -s $(brew --prefix)/etc/profile.d/autojump.sh  ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Base16 Shell
#BASE16_SHELL="$HOME/Dev/github.com/chriskempson/base16-shell/base16-eighties.dark.sh"
#[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL:


alias bpython34=/Library/Frameworks/Python.framework/Versions/3.4/bin/bpython
alias python3=/usr/local/opt/python3/bin/python3.5

#export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scriptingA
PATH=$PATH:~/homebrew/sbin:~/homebrew/bin
alias bpython=/Library/Frameworks/Python.framework/Versions/3.6/bin/bpython

# History
export HISTCONTROL=ignoreboth:erasedups

# Mac
alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'

# fix ctr+s/r
stty -ixon

# Prezto Theme
autoload -Uz promptinit
promptinit
prompt minimal
PATH=$PATH:/usr/local/bin:/usr/local/sbin:/Users/radd/.pyenv/shims:/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/radd/.pyenv/shims:/Library/Frameworks/Python.framework/Versions/3.4/bin

## Keybindings

# CTRL + R for history completion
bindkey -M viins '^r' history-incremental-search-backward\
bindkey -M vicmd '^r' history-incremental-search-backward

