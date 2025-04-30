# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/francohaute/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


source /usr/share/fzf/key-bindings.zsh
export FZF_DEFAULT_COMMAND="fd --hidden --type f --no-ignore"
export FZF_DEFAULT_OPTS="--height=70% --layout=reverse --preview 'bat --color always --theme Coldark-Dark {}'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS"
export FZF_ALT_C_COMMAND="fd --hidden --type d"
export FZF_ALT_C_OPTS="--height=70% --layout=reverse --preview 'eza -T {}'"

eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
