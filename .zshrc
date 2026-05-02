# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"
bindkey -e

setopt auto_cd
setopt correct
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt no_beep
setopt share_history

# alias
alias ls='ls -G -F'
alias ll='ls -l'
alias la='ls -la'
alias ...='cd ../..'
alias ....='cd ../../..'
alias d='docker'
alias dc='docker compose'
alias tf='terraform'
alias tg='terragrunt'
alias cc='claude'
alias ccp='claude -p'
alias ccc='claude -c'
alias ccr='claude -r'
alias ccu='claude update'
alias ccd='claude --dangerously-skip-permissions'
alias cccd='claude -c --dangerously-skip-permissions'
alias ccrd='claude -r --dangerously-skip-permissions'
alias cx='codex'
alias gemini="/opt/homebrew/bin/gemini"
alias gc='gemini'
alias kc='kiro-cli'

# prompt
PROMPT='%F{cyan}%1~%f %F{green}❯%f '

# cursor blinking
printf '\e[2 q'

# completion
autoload -Uz compinit
# -C: Use cache, -u: Skip security check
compinit -C -u
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Docker CLI completions
fpath=(/Users/sota/.docker/completions $fpath)

# fzf
if type fzf > /dev/null 2>&1; then
    eval "$(fzf --zsh)"
fi

# locale
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# os
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# homebrew
export HOMEBREW_NO_ENV_HINTS=1

# go
export GO111MODULE=on
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

# aqua
export PATH="/Users/sota/.local/share/aquaproj-aqua/bin:$PATH"

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# postgres
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

# aws
export AWS_DEFAULT_PROFILE=moto

# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"
