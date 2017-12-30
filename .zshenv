if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

if [[ -z "$HOMEBREW_GITHUB_API_TOKEN" ]]; then export $HOMEBREW_GITHUB_API_TOKEN; else return -1; fi
PATH=/usr/local/bin:/usr/local/sbin:/Users/radd/.pyenv/shims:/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/radd/.pyenv/shims:/Library/Frameworks/Python.framework/Versions/3.4/bin

