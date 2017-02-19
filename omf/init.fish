alias gco="git checkout"
alias grh="git reset --hard"
alias gs="git status"
alias gca="git commit --all"
alias gd="git diff"
alias gdt="git difftool"
alias e="emacsclient -n"
alias cleart="clear; and tmux clear-history"
alias n="nvim"

alias copy="xsel --input"
alias paste="xsel --output"

alias s='jq .scripts package.json'

function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function __check_nvm --on-variable PWD --description 'Run `nvm use` if nvmrc is defined'
  status --is-command-substitution; and return

  #  if test -e ./.nvmrc
  #    nvm i
  #  end
end

function __autoenv --on-variable PWD --description 'Tell user to source .env'
  status --is-command-substitution; and return

  if test -e ./.env
      echo 'Run `source .env` to export env vars'
  end
end

set -x HOMEBREW_NO_ANALYTIC 1
set -gx RUST_SRC_PATH ~/dev/play/rustc-1.7.0/src

set -gx GOOGLE_APPLICATION_CREDENTIALS ~/dev/service_account_key.json 
set -gx GOPATH $HOME/dev/go

set -gx EDITOR nvim
set -gx BROWSER firefox

export FZF_DEFAULT_COMMAND='ag -g ""'
