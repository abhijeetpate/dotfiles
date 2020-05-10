# Setup fzf

# ---------
# ignore this binary since fzf installed with apt
#if [[ ! "$PATH" == $HOME/dotfiles/fzf/bin* ]]; then
#  export PATH="${PATH:+${PATH}:}$HOME/dotfiles/fzf"
#fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$HOME/dotfiles/fzf/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$HOME/dotfiles/fzf/key-bindings.zsh"

