
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/kvnen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
#colors?
autoload -U colors && colors
PS1='%F{blue}%n%F{white}@%F{gray}%m%B%F{magenta}%~%b%F{green} > %f'
#history for multiple terminals
setopt inc_append_history
setopt share_history
#ignore duplicate commands in history
setopt histignorealldups

#case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' case-sensitive false

#fzf limit to only home directory
export FZF_DEFAULT_COMMAND="find ~ -type f"

#fzf things to make good 1!
fzf_cd() {
  cd "$(dirname "$(fzf)")" || return 1
}
bindkey -s '^F' 'fzf_cd\n'

autoload -Uz compinit
compinit
autoload -Uz bashcompinit
bashcompinit

#setting neovim as editor as one should!
export EDITOR='/usr/bin/nvim'
#sourcing the syntax highlighting
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

