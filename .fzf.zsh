# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/akarwande/homebrew/Cellar/fzf/0.28.0/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/akarwande/homebrew/Cellar/fzf/0.28.0/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/akarwande/homebrew/Cellar/fzf/0.28.0/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/akarwande/homebrew/Cellar/fzf/0.28.0/shell/key-bindings.zsh"
