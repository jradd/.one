# .one dot
oh-my-tmux, powerline, should just effing work



```zsh 
cd "${HOME}" &&
git clone https://github.com/jradd/.one.git && echo -n Done
cd "${HOME}"/.one/ && fc-cache fonts 3&>/dev/null  && echo -n Done
cd .tmux
git submodule update --init --recursive --remote;
cd ../fonts && wget -O "${HOME}"/.one/fonts/Inconsolata\ for\ Powerline.otf https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata\ for\ Powerline.otf
cd "${HOME}" && ln -s -f .one/.tmux.conf.local
ln -s -f .one/.zshrc
ln -s -f .one/.zshenv
ln -s -f .one/.zshfunc
ln -s -f .one/.tmux .tmux && echo -n Finally Done. I think 
```

## zshfunc
`_gc_repo <user> <repo>`


## REVERT

```
all_syms=($(find . -maxdepth 1 -type l |xargs stat -f "%Y"))               
for v in ${all_syms[@]}; do [ -f "$v" ] || echo $v; done && echo -en "Done"
```
