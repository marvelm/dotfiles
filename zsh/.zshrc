export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="fishy"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=red'

plugins=(git per-directory-history history-substring-search zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

fzf_history() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
zle -N fzf_history fzf_history # Create widget
bindkey '^t' fzf_history # Bind ctrl-t to widget

autoload -U colors && colors
PS1="%{$fg[white]%}%n%{$reset_color%}@%{$fg[white]%}%m %{$fg[white]%}%~ %{$reset_color%}%% "

if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='vim'
else
 export EDITOR='nvim'
fi

export BROWSER="firefox"

export SSH_KEY_PATH="~/.ssh/rsa_id"
export FZF_DEFAULT_COMMAND='ag -g ""'

alias n="nvim"
alias e="emacsclient"
alias cleart="clear && tmux clear-history"
alias copy="xsel --input"
alias paste="xsel --output"

alias gs="git status"
alias gd="git diff"
alias gdt="git difftool"
alias gco="git checkout"
alias gca="git commit -a"
alias grh="git reset --hard HEAD"
alias show-deps="jq '.dependencies' package.json"

alias tmux="TERM=screen-256color-bce tmux"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
