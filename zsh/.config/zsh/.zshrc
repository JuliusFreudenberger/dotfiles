# Plugins
source $ZDOTDIR/zsh-git-prompt/zshrc.sh
source $ZDOTDIR/window-title-bar.sh
source $ZDOTDIR/git-aliases.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/julius/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

bindkey '^R' history-incremental-search-backward
# Commands beginning with space are excluded from the history
setopt hist_ignore_space

# set PATH so it includes user's private bin directories
PATH="$HOME/.local/bin:$PATH"

# Aliases
alias grep='grep --color=auto'
alias wget='wget -c'
alias mkdir='mkdir -pv'
alias ls='ls -CF --color=auto'
alias vim=nvim
# Exports
export EDITOR=nvim
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PROMPT="%F{12}[%f%F{10}%n%f%F{12}@%f%F{white}%m%f%F{12}]%f%F{white}:%f %F{white}%~%f%F{12}>%b$(git_super_status)%f%F{10}%(!.#.$)%f "
PROMPT='%F{12}[%F{10}%n%F{12}@%F{white}%m%F{12}]%F{white}: %~%F{12}>$(git_super_status)%F{10}%(!.#.$)%f '
