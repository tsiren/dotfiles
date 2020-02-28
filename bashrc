alias ..="cd .."
alias vi=vim
alias lg="git log --all --decorate --oneline --graph"
alias ag='ag --hidden'
alias bc="BC_ENV_ARGS=<(echo "scale=2") \bc"
alias ll='ls -alF'
alias gs='git status'
alias gd='git diff'
alias gdt='git difftool'

export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'

# Disable control flow key strokes (Ctrl-S & Ctrl-Q)
stty -ixon

# Disable non breaking space causing misbehaviour after pipe & tilde chars
setxkbmap -option "nbsp:none"
