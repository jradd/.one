# .one dot
oh-my-tmux, powerline, should just effing work



```zsh 
cd /Users/radd &&
git clone https://github.com/jradd/.one.git && echo -n Done
cd /Users/radd/.one/ && fc-cache fonts 3&>/dev/null  && echo -n Done
cd .tmux
git submodule update --init --recursive --remote;
cd ../fonts && wget -O /Users/radd/.one/fonts/Inconsolata\ for\ Powerline.otf https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata\ for\ Powerline.otf
cd /Users/radd && ln -s -f .one/.tmux.conf.local
ln -s -f .one/.zshrc
ln -s -f .one/.tmux .tmux && echo -n Finally Done. I think 
```

## zshfunc
`_gc_repo <user> <repo>`

### TODO
Add find all broken symlinks after rm rf .one to revert



