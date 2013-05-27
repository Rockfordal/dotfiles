alias gap='git add -p'
alias gb='git branch'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gl='git pull'
alias glod='git log --oneline --decorate'
alias gln="git ln | perl -ple 's/\*/sprintf(\"%2s\", \$n++)/e' | less"
alias gp='git push'
alias gpr='git pull --rebase'
alias grep='grep --color=auto --exclude="*~"'
alias gst='git status'
alias gsu='git stash --include-untracked'
alias gsi='git stash --keep-index'
alias gr='git rebase'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias reset-authors='git commit --amend --reset-author -C HEAD'
alias vi='vim'

# anlu
alias gds="git diff --staged"
alias ga="git add"
alias gaa="git add -A"
alias gs="git stash"
alias gsa="git stash apply"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

