# one dotfile to rule them all
oh-my-tmux, powerline, should just effing work


The following needs to be cleaned up. Works great on OS X, but not Linux.

```zsh 
cd "${HOME}" &&
git clone https://github.com/jradd/one.git && echo -n Done
cd "${HOME}"/.one/ && fc-cache fonts 3&>/dev/null  && echo -n Done
cd .tmux
git submodule update --init --recursive --remote;
cd ../fonts && wget -O "${HOME}"/.one/fonts/Inconsolata\ for\ Powerline.otf https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata\ for\ Powerline.otf
cd "${HOME}" && ln -s -f .one/.tmux.conf.local
ln -s -f .one/.zshrc
[ -f "~/.vimrc" ] && ln -s -f .one/.vimrc &&
mkdir -p ~/.vim/bundle/ && 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
      done && \
echo -en "Finally Done. I think" &&
ln -s -f .one/.zshenv
ln -s -f .one/.zshfunc
ln -s -f .one/.tmux .tmux && source ~/.zshrc
printf "Modified: %s\n" `ls -laHF ~/.*(L-60) |grep \@` |grep \/
zsh
```

## zshfunc
`_gc_repo <user> <repo>`


## REVERT

```
[ -f "~/.one" ] && rm -rf ~/.one

all_syms=($(find . -maxdepth 1 -type l |xargs stat -f "%Y")) && printf "%s" "\nRemoving Broken
SymLinks\n"
for v in ${all_syms[@]}; do [ -f "$v" ] || echo $v; done && echo -en "Done"
```
