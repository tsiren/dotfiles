alias ..='cd ..'
alias vi=vim
alias lg='git log --all --decorate --oneline --graph'
alias ag='ag --hidden'
alias bc='BC_ENV_ARGS=<(echo "scale=2") \bc'
alias ll='ls -alF'
alias gs='git status'
alias gd='git diff'
alias gdt='git difftool'

export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
# Fixes vim etc. colors
export TERM='xterm-256color'

# Disable control flow key strokes (Ctrl-S & Ctrl-Q)
stty -ixon

# Disable non breaking space causing misbehaviour after pipe & tilde chars
setxkbmap -option 'nbsp:none'
setxkbmap -option caps:escape

alias showmerged='for branch in `git branch -r --merged | grep -v master`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r'
alias showunmerged='for branch in `git branch -r --no-merged | grep -v master`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r'
alias drydelmerged='git branch -r --merged | grep -v master | sed 's#origin/##g' | xargs git push origin --delete --dry-run'
alias delmerged='git branch -r --merged | grep -v master | sed 's#origin/##g' | xargs git push origin --delete'
alias dellocal='git branch --merged master | grep -v "\*\|master" | xargs -n 1 git branch -d'
alias subinit="git submodule update --init"
alias subup="git submodule update --remote"
alias lint="golangci-lint run --timeout 2m0s --issues-exit-code 1"
