export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="fishy"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=red'

plugins=(git per-directory-history history-substring-search zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
