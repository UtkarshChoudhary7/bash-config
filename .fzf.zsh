# Setup fzf
# ---------
if [[ ! "$PATH" == *"$BASH_CONFIG_PATH"/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}$BASH_CONFIG_PATH/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$BASH_CONFIG_PATH/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$BASH_CONFIG_PATH/fzf/shell/key-bindings.zsh"
