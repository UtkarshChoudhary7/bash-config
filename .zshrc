# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/c/Users/TV Mode/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Theme
eval "$(oh-my-posh init zsh --config $POSH_THEMES_PATH/custom.omp.json)"

# Additional tools setup start
# ---------
if [[ ! "$PATH" == *"$BASH_CONFIG_PATH"/bin* ]]; then
  PATH="${PATH:+${PATH}:}$BASH_CONFIG_PATH/bin"
fi
# ---------
# Additional tools setup end

# fd setup start
# ---------
if [[ ! "$PATH" == *"$BASH_CONFIG_PATH"/fd* ]]; then
  PATH="${PATH:+${PATH}:}$BASH_CONFIG_PATH/fd"
fi
# ---------
# fd setup end

# fzf setup start
# ---------
[ -f $BASH_CONFIG_PATH/.fzf.zsh ] && source $BASH_CONFIG_PATH/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS="--extended"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git"
# ---------
# fzf setup end

# zsh-autosuggestions setup start
# ---------
source $BASH_CONFIG_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh
# ---------
# zsh-autosuggestions setup end

# Aliases start
# ---------
source $BASH_CONFIG_PATH/aliases
# ---------
# Aliases end

# Shift select keybindings start
# ---------
source $BASH_CONFIG_PATH/shift-select
# ---------
# Shift select keybindings end
