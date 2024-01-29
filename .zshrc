# If you come from bash you might have to change your $PATH.
export TERM=xterm-256color
export PATH=$HOME/bin:/usr/local/bin:$PATH:
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
ZSH_THEME="half-life"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
eval "$(~/.rbenv/bin/rbenv init - zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
