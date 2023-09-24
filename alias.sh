setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# List directory contents
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d

alias l='eza -F'
alias ls='eza -F'
alias lr='eza -RlF'
alias ll='eza -lahF --git'
alias lll='eza -baghHliSF@ --git'

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias dud='du -d 1 -h'
alias duf='du -sh *'
# alias fd='find . -type d -name'
# alias ff='find . -type f -name'

alias cat='bat'
# alias tmux='zellij'
alias nodevm='source "$HOME/.nvm/nvm.sh"'
alias nohistory='fc -p'
# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# alias gitclean='git branch -r | awk '"'"'{print $1}'"'"' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '"'"'{print $1}'"'"
alias lg='lazygit'

alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gbl='git blame -b -w'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcp='git cherry-pick'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfp='git fetch --prune'
alias gfr='git pull --rebase'
alias gfc='git clone'
alias gfcr='git clone --recurse-submodules'
alias gfm='git pull'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbs='git rebase --skip'
alias gs='git stash'
alias glgp='git log --stat -p'
alias glgl="git log --decorate --oneline --graph --boundary"
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg_long="git log --date-order --all --stat --graph --pretty=format:'%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%n%+B'"
alias glg_topo='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg_long_top0="git log --date-order --all --stat --graph --pretty=format:'%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%n%+B'"

alias gignore='git update-index --assume-unchanged'

# git log --date=iso --pretty=format:'%ad %H %s' | awk '$0 >= "2018-05-10" && $0 <= "2018-12-31"'
